// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract StateVariables {

    // state variable
    uint public myUint = 500;

    function foo() external {
        uint notStateVariable = 456;
    }

}