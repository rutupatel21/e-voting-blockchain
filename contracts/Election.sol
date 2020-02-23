pragma solidity ^0.5.16;

contract Election {
	
	string public candidate;
	//constructor to store and read a candidate name
	constructor () public{
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	//model candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}

	//store candidate using mapping
	mapping(uint => Candidate) public candidates;

	//count candidates
	uint public candidateCount;

	function addCandidate (string memory _name) private {
		candidateCount++;
		candidates[candidateCount] = Candidate(candidateCount, _name, 0);
	}

}