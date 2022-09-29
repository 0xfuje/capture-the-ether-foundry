// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { TokenBankChallenge, SimpleERC223Token } from "../../src/miscellaneous/TokenBank.sol";

contract TokenBankTest is Test {
    TokenBankChallenge tokenbank;
    SimpleERC223Token erc223;

    address deployer = vm.addr(7);
    address h3x0r = vm.addr(1337);

    function setUp() public {
        tokenbank = new TokenBankChallenge();
        vm.prank(deployer);
        erc223 = new SimpleERC223Token();
    }
}