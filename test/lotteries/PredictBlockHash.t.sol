// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { PredictTheBlockHashChallenge } from "../../src/lotteries/PredictBlockHash.sol";

contract PredictBlockHashTest is Test {
    PredictTheBlockHashChallenge predictBlockHash;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        predictBlockHash = new PredictTheBlockHashChallenge();
    }
}