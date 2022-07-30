// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// smart contract that releases funds to a user if 
// user has a heart rate in a reasonable range

import "@openzeppelin/contracts@4.7.1/security/Pausable.sol";
import "@openzeppelin/contracts@4.7.1/access/Ownable.sol";

contract HearthHealthy is Pausable, Ownable {

    // user identification and bio-markers
    struct User {
        string name;
        uint age;
        uint weight;
        string bloodType;
        uint heartRate;
    }

    mapping(address => User) internal user;

    User person;

    modifier healthCheck() {
        require(person.heartRate < 80, "heart rate too fast");
        _;
    }

    function guy(uint _heartRate) public {
        person = User("Bob Ross", 32, 150, "O negative", _heartRate);
        
    }

    // shows users updated heart rate
    function updatedUser() public view returns (string memory, uint, uint, string memory, uint) {
        return (person.name, person.age, person.weight, person.bloodType, person.heartRate);
    }

    function heartRateTracker() external view healthCheck returns (uint) {
        return person.heartRate;
    }

    uint public balanceReceived;

    //put funds into the smart contract
    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }
    
    event Deposit(address indexed _from, address indexed _to);

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // transfer funds to user if health check is passed
    function withdrawMoneyTo(address payable _to) public healthCheck {
        _to.transfer(this.getBalance());
        emit Deposit(msg.sender, _to);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}
