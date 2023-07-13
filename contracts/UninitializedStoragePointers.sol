// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract UninitializedStoragePointers {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) public {
        require(msg.sender == owner, "Only owner can call this function.");
        _changeOwner(_newOwner);
    }

    function _changeOwner(address _newOwner) internal {
        address addr = owner; // <-- uninitialized storage pointer
        addr = _newOwner;     // This doesn't change `owner`
    }
}
