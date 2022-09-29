// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { FuzzyIdentityChallenge } from "../../src/accounts/FuzzyIdentity.sol";

contract FuzzyIdentityTest is Test {
    FuzzyIdentityChallenge fuzzyIdentity;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        fuzzyIdentity = new FuzzyIdentityChallenge();
    }
}