// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheNumberChallenge } from "../../src/lotteries/GuessNum.sol";

contract GuessNumTest is Test {
    GuessTheNumberChallenge guessNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessNum = new GuessTheNumberChallenge();
    }
}