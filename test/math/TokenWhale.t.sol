// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { TokenWhaleChallenge } from "../../src/math/TokenWhale.sol";

contract TokenWhaleTest is Test {
    TokenWhaleChallenge tokenWhale;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        tokenWhale = new TokenWhaleChallenge();
    }
}