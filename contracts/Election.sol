pragma solidity ^0.5.16;

contract Election {
	
	address public owner;
	modifier restricted() {
    	if (msg.sender == owner) _;
  	}

	string public candidate;
	//constructor to store and read a candidate name
	constructor () public{
		candidate = "Candidate 1";
	}

}