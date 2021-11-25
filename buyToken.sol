// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Transaction{
    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );


    constructor(address payable _wallet){
        wallet = _wallet;

    }

    //Creating a fallback function
    fallback() external payable{
        buyToken();
    }

    function buyToken() payable public{
        // buy a token
        balances[msg.sender] += 1;
        // send ether to the wallet
        wallet.transfer(msg.value);
        emit Purchase(msg.sender,1);
    }
}