// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MyContract {
    uint256 myNumber;

    constructor() {
        myNumber = 5;
    }

    function setNumber(uint256 _num) public {
        myNumber = _num;
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}