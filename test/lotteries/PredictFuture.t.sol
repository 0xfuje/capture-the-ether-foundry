// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import { PredictTheFutureChallenge } from "../../src/lotteries/PredictFuture.sol";

contract PredictFutureTest is Test {
    PredictTheFutureChallenge predictFuture;

    address h3x0r = vm.addr(1337);

    function setUp() public {
        predictFuture = new PredictTheFutureChallenge();
    }
}