// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Name{
    // All uninitialized variables are assigned the values 0 in ethereum
    uint256 public peopleCount;
    mapping(uint =>  Person) public people;

    uint256 openingTime = 1637769813; 
     
    modifier onlyWhileOpen()
    {
        require(block.timestamp >= openingTime);
        // The function body is inserted where the special symbol "_;"
        _;
    }


    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson  (
        string memory _firstName,
        string memory _lastName
        )
         public 
         onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount,_firstName,_lastName);
    }

    // Defining an internal function
    function incrementCount() 
    internal
    {
        peopleCount = peopleCount + 1;
    }
}