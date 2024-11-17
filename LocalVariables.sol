// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract LocalVariables {

    // state variables
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 300; // local variable
        bool f = false; //local variable
        // more code
        x += 600;
        f = true;

        // update state variables
        i = 123;
        b = true;
        myAddress = address(1);
    }



}