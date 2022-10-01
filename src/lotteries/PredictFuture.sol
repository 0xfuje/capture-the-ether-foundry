// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract PredictTheFutureChallenge {
    address guesser;
    uint8 guess;
    uint256 settlementBlockNumber;
    bool public isComplete;

    function predictTheFuture() public payable {
        require(msg.value == 1 ether);
    }


    function lockInGuess(uint8 n) public payable {
        require(guesser == address(0));
        require(msg.value == 1 ether);

        guesser = msg.sender;
        guess = n;
        settlementBlockNumber = block.number + 1;
    }

    function settle() public {
        require(msg.sender == guesser, "msg.sender is not guesser");
        require(block.number > settlementBlockNumber, "too early");

        uint8 answer = uint8(uint(keccak256(
            abi.encodePacked(blockhash(block.number - 1), block.timestamp))
        )) % 10;

        guesser = address(0);
        if (guess == answer) {
            payable(msg.sender).transfer(2 ether);
            isComplete = true;
        }
    }
}