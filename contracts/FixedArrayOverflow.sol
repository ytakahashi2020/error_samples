// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract FixedArrayOverflow {
    uint[3] public array;

    function addToFixedArray(uint index, uint value) public {
        array[index] = value;
    }
}