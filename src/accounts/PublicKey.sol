// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract PublicKeyChallenge {
    address owner = 0x92b28647Ae1F3264661f72fb2eB9625A89D88A31;
    bool public isComplete;

    function authenticate(bytes calldata publicKey) public {
        require(
            keccak256(abi.encodePacked(publicKey)) == 
            bytes32(uint256(uint160(owner)))
        );
        isComplete = true;
    }
}