// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;
contract ExampleContract {
    function useArrays(string calldata user) 
        public 
        pure 
        returns(string memory) {
            return string.concat("hello ", user);
    }
}


