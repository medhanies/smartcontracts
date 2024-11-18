// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

// require, revert, assert
// - gas refund, state updates are reverted
// custom error - save gas

contract Error {

    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
        // code
    }

    function testRevert(uint _i) public pure {
        if(_i > 10) {
            revert("i > 10");
        }
    }

    uint public num = 100;

    function testAssert() public view {
        assert(num == 100);
    }

    function foo(uint _i) public {
        // accidentally update num
        num += 1;
        require(_i < 10);
    }

    // custom error
    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}