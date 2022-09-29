// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { RetirementFundChallenge } from "../../src/math/RetirementFund.sol";

contract RetirementFundTest is Test {
    RetirementFundChallenge retirementFund;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        retirementFund = new RetirementFundChallenge();
    }
}