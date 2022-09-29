// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheRandomNumberChallenge } from "../../src/lotteries/GuessRandomNum.sol";

contract GuessRandomNumTest is Test {
    GuessTheRandomNumberChallenge guessRandomNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessRandomNum = new GuessTheRandomNumberChallenge();
    }
}