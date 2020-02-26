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
	//store accounts that have voted
	mapping (address => bool) public voters;
	

	//count candidates
	uint public candidateCount;

	//voted event
	event votedEvent(uint _candidateId);
	
	function addCandidate (string memory _name) private {
		candidateCount++;
		candidates[candidateCount] = Candidate(candidateCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		// to check that the person has not voted before
		require(!voters[msg.sender]);

		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidateCount);
		
		//to record that voter has voted
		voters[msg.sender] = true;
		
		//updating vote count
		candidates[_candidateId].voteCount ++;

		//trigger voted event
		emit votedEvent(_candidateId);
	}

}