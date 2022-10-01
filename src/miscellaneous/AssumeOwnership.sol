// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract AssumeOwnershipChallenge {
    address public owner;
    bool public isComplete;

    function assumeOwnership() public {
        owner = msg.sender;
    }

    function authenticate() public {
        require(msg.sender == owner);

        isComplete = true;
    }
}
