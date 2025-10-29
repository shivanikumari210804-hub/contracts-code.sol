// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    address public owner;
    uint public proposalCount = 0;
    bool public votingActive = false;

    struct Proposal {
        uint id;
        string description;
        uint voteCount;
    }

    mapping(uint => Proposal) public proposals;
    mapping(address => bool) public hasVoted;

    // Events to log activity
    event ProposalCreated(uint id, string description);
    event Voted(address voter, uint proposalId);
    event VotingStarted();
    event VotingEnded();

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can do this");
        _;
    }

    modifier whenVotingActive() {
        require(votingActive, "Voting is not active");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Owner adds new proposal
    function addProposal(string memory _description) public onlyOwner {
        proposalCount++;
        proposals[proposalCount] = Proposal(proposalCount, _description, 0);
        emit ProposalCreated(proposalCount, _description);
    }

    function startVoting() public onlyOwner {
        require(!votingActive, "Voting already active");
        votingActive = true;
        emit VotingStarted(); // Added missing event emit
    } // <-- This closing brace was missing
}
