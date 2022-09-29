// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheNewNumberChallenge } from "../../src/lotteries/GuessNewNum.sol";

contract GuessNewNumTest is Test {
    GuessTheNewNumberChallenge guessNewNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessNewNum = new GuessTheNewNumberChallenge();
    }
}