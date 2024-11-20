// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract ExampleContract {
    function productOfarray(uint256[5] calldata myArray) 
        public 
        pure 
        returns (uint256) {
            uint256 last = myArray[4];
            return last;
    }
}


