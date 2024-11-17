// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 - 1
    int public  i = -123; // int = int256 -2**256 to 2**255 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    bytes32 public b32 = 0x7641718f9f32b9e1c7796615b92db8aa943e2516bbb13d2184305d310f620184;

}