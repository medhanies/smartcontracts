// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ForAndWhileLoops {

    function loops() external pure {
        for (uint i = 0; i < 10; i++) {
            // code
            if(i == 3) {
                continue;
            }
            // more code
            if(i == 5) {
                break;
            }
        }
        uint j = 0;
        while(j < 10) {
            // code
            j++;
        }
    }

    function sum(uint _n) external pure returns (uint) {
        uint s;
        for(uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}