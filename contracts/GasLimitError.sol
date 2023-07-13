// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract GasLimitError {
    uint[] public largeArray;

    function populateLargeArray() public {
        // Populate array with a large amount of data
        for (uint i = 0; i < 2**255; i++) {
            largeArray.push(i);
        }
    }
}