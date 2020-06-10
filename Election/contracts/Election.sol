pragma solidity >=0.4.21 <0.7.0;
contract Election{
	// Model a Candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}
	// Store Candidates
	// fetch Candidates
	mapping(uint => Candidate) public candidates;
	// store Candidates count
	uint public candidatesCount;
	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string memory _name) private{
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
	}
}