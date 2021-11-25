// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MyContract{

// Structs 
Person[] public people;
uint256 public peopleCount;



struct Person{
string _firstName;
string _lastName;
}

function addPerson(string memory _firstName,string memory _lastName)public{
    people.push(Person(_firstName,_lastName));
    peopleCount += 1;
}







/*

 Enums
    // 0 corresponds to the first item of the list i.e Waiting
    // 1 corresponds to the second item of the list i.e Ready
    // 2 corresponds to the third item of the list i.e Active
 enum State {Waiting,Ready,Active}
 State public state;

    constructor(){
        state = State.Waiting;
    }

    function activate() public{
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }

*/

/*
    string public value = "The initial value";

    // Defining a constructor , will be executed only when the contract is deployed
    /*
    constructor(){
     value = "Initial_Value";
    }
    */
    // Setting pre-defined bits for an integer
    /*
    uint8 public myunint8 = 88;
    function set(string memory _value ) public{
        value = _value;
    }
    */

}