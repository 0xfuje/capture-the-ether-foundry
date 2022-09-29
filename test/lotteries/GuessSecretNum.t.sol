// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheSecretNumberChallenge } from "../../src/lotteries/GuessSecretNum.sol";

contract GuessSecretNumTest is Test {
    GuessTheSecretNumberChallenge guessSecretNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessSecretNum = new GuessTheSecretNumberChallenge();
    }
}