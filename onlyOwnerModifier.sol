// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Name{
    // All uninitialized variables are assigned the values 0 in ethereum
    uint256 public peopleCount;
    mapping(uint =>  Person) public people;
    address owner;

    modifier onlyOwner(){
        // msg.sender gices us the account or the address of the person who called the function 
        require(msg.sender == owner);   
        // The function body is inserted where the special symbol "_;"
        _;
    }

    constructor(){
        //msg.sender is the person who deploys the smart contract
        owner == msg.sender;
    }
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson  (string memory _firstName,string memory _lastName) public onlyOwner{
        incrementCount();
        people[peopleCount] = Person(peopleCount,_firstName,_lastName);
    }

    // Defining an internal function
    function incrementCount() internal{
        peopleCount = peopleCount + 1;
    }
}