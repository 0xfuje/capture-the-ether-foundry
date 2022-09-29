// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { AssumeOwnershipChallenge } from "../../src/miscellaneous/AssumeOwnership.sol";

contract AssumeOwnerShipTest is Test {
    AssumeOwnershipChallenge assumeOwnership;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        assumeOwnership = new AssumeOwnershipChallenge();
    }
}