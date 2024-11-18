// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

// Function modifier - reuse code before and / or after function
// Basic, inputs, sandwich

contract FunctionModifier {

    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    // basic modifer
    modifier whenNotPaused() {
        require(!paused, "paused");
        _;

    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }


    // modifier takes input
    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;

    }
    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    // sandwich modifier
    modifier sandwich() {
        // code here
        count += 10;
        _;
        // more code
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }

}