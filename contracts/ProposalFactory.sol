// contracts/ProposalFactory.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ProposalFactory {
    struct Proposal { string desc; bool executed; }
    Proposal[] public proposals;

    function create(string calldata d) external {
        proposals.push(Proposal(d,false));
    }

    function execute(uint256 id) external {
        Proposal storage p=proposals[id]; require(!p.executed); p.executed=true;
    }
}
