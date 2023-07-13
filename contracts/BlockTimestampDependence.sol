// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract BlockTimestampDependence {
    uint public prize;

    function play() public payable {
        require(msg.value == 0.001 ether, "Must send exactly 1 Ether to play.");
        if (block.timestamp % 2 == 0) {
            prize = msg.value;
        }
    }
}