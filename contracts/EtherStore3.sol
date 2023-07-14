// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract EtherStore3 is ReentrancyGuard {
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public nonReentrant {
        // Checks
        uint bal = balances[msg.sender];
        require(bal > 0);

        // Effects
        balances[msg.sender] = 0;

        // Interactions
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
