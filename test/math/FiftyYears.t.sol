// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { FiftyYearsChallenge } from "../../src/math/FiftyYears.sol";

contract FiftyYearsTest is Test {
    FiftyYearsChallenge fiftyYears;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        fiftyYears = new FiftyYearsChallenge();
    }
}