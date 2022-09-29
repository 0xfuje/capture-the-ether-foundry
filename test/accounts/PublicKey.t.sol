// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { PublicKeyChallenge } from "../../src/accounts/PublicKey.sol";

contract PublicKeyTest is Test {
    PublicKeyChallenge publicKey;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        publicKey = new PublicKeyChallenge();
    }
}