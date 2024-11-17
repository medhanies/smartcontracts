// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract GlobalVariables {

    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender; // stores address that calls this function
        uint timestamp = block.timestamp;
        uint blockNum = block.number; //
        return (sender, timestamp, blockNum);
    }

}