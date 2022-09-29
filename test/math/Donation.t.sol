// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { DonationChallenge } from "../../src/math/Donation.sol";

contract DonationTest is Test {
    DonationChallenge donation;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        donation = new DonationChallenge();
    }
}