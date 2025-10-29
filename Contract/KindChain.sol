// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// KindChain: A simple contract to record acts of kindness on blockchain
contract KindChain {
    // Struct to represent each act of kindness
    struct KindAct {
        address sender;      // who did the act
        string message;      // what the act was
        uint256 timestamp;   // when it happened
    }

    // Array to store all acts
    KindAct[] public acts;

    // Event to notify when a new act is added
    event NewAct(address indexed sender, string message, uint256 timestamp);

    // Function to record an act of kindness
    function recordAct(string memory _message) public {
        KindAct memory newAct = KindAct({
            sender: msg.sender,
            message: _message,
            timestamp: block.timestamp
        });
        acts.push(newAct);
        emit NewAct(msg.sender, _message, block.timestamp);
    }

    // Get total number of kindness acts
    function getTotalActs() public view returns (uint256) {
        return acts.length;
    }

    // Get all acts of kindness
    function getAllActs() public view returns (KindAct[] memory) {
        return acts;
    }
}
