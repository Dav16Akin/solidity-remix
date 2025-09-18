// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Test {
    uint256 myNumber;
    bool isActive;
    bytes32 password;
    string name;

    string[] names;
    mapping(uint256 => Person) ids;

    address ad;

    struct Person {
        address id;
        string name;
        uint24 age;
    }

    enum Day {Monday, Tuesday}

    constructor() {
        myNumber = 16;
        isActive = true;
        name = 'Tomas';
    }

    modifier above10(uint256 _newNumber) {
        require(_newNumber > 10, "number must be greater than 10");
        _;
    }

    function setNumber(uint256 _newNumber) internal above10(_newNumber) {
        myNumber = _newNumber;
    }

    function getNumber() external view returns ( uint256 ) {
        return myNumber;
    }

}