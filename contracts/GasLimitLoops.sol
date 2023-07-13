// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract GasLimitLoops {
    address[] public users;

    function addUser(address _user) public {
        users.push(_user);
    }

    function rewardUsers() public {
        for (uint i=0; i<users.length; i++) {
            payable(users[i]).transfer(1 ether);
        }
    }
}
