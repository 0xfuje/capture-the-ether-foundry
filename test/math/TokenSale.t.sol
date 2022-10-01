// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { TokenSaleChallenge } from "../../src/math/TokenSale.sol";

contract TokenSaleTest is Test {
    TokenSaleChallenge tokenSale;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        tokenSale = new TokenSaleChallenge();
        deal(h3x0r, 1 ether);
        deal(address(tokenSale), 1 ether);
    }

    function testTokenSaleExploit() public {
        vm.startPrank(h3x0r);
    }
}