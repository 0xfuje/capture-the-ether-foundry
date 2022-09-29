// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { AccountTakeoverChallenge } from "../../src/accounts/AccountTakeover.sol";

contract AccountTakeOverTest is Test {
    AccountTakeoverChallenge accountTakeOver;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        accountTakeOver = new AccountTakeoverChallenge();
    }
}