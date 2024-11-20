// SPDX-License-Identifier: MIT
pragma solidity ^0.8;


contract ExampleContract {
    function productOfarray(uint256[] calldata myArray) 
        public 
        pure 
        returns (uint256) {
            uint256 product = 1;
            for (uint256 i = 0; i < myArray.length; i++) {
                product *= myArray[i];
            }
            return product;
    }
}


