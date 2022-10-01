// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheNumberChallenge } from "../../src/lotteries/GuessNum.sol";

contract GuessNumTest is Test {
    GuessTheNumberChallenge guessNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessNum = new GuessTheNumberChallenge();
        deal(h3x0r, 1 ether);
        deal(address(guessNum), 2 ether);
    }

    function testGuessNumExploit() public {
        vm.startPrank(h3x0r);
        guessNum.guess{value: 1 ether}(uint8(42));
        assertEq(h3x0r.balance, 2 ether);
    }
}