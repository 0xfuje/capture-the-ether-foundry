// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { GuessTheSecretNumberChallenge } from "../../src/lotteries/GuessSecretNum.sol";

contract GuessSecretNumTest is Test {
    GuessTheSecretNumberChallenge guessSecretNum;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        guessSecretNum = new GuessTheSecretNumberChallenge();
        deal(h3x0r, 1 ether);
        deal(address(guessSecretNum), 1 ether);
    }

    function testSecretNumExploit() public {
        vm.startPrank(h3x0r);

        // there may be better ways to solve this than brute force
        // ¯\_(ツ)_/¯

        uint8 secretNum;
        for (uint8 i; i < 256; i++) {
            bytes32 hash = keccak256(abi.encodePacked(i));
            if (hash == guessSecretNum.answerHash()) {
                emit log_named_uint("secret num found", uint(i));
                secretNum = i;
                break;
            }
        }
        guessSecretNum.guess{value: 1 ether}(secretNum);
        assertEq(h3x0r.balance, 2 ether);
    }
}