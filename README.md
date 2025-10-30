# Cello_Web3
kindChain is for you
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7e133c22-2d70-4f57-abe6-7d5038f25e05" />

# 💖 KindChain

**KindChain** is a simple blockchain project built with **Solidity** that lets users record acts of kindness on the blockchain. It’s a great starting point for learning how smart contracts store and display data in a decentralized way.

---

## 🌍 Project Description

KindChain allows anyone to log their good deeds — whether helping someone, donating, or spreading positivity — so that each act is stored permanently on the blockchain. It shows how blockchain can be used for good causes and community transparency.

---

## 💡 What It Does

* Records acts of kindness with a message.
* Stores sender’s wallet address and timestamp.
* Keeps all acts public and viewable by anyone.
* Emits an event whenever a new act is added.

---

## ✨ Features

* Easy-to-understand Solidity code
* Public kindness record
* Works on Celo, Ethereum, or any EVM network
* Great for beginners and students

---

## 🧱 Smart Contract Code

```solidity
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

```

---

## 🔗 Deployed Smart Contract

**Network:** Celo / Ethereum Testnet
**Contract Address:** Open(https://sepolia.celoscan.io/tx/0xf7e33a24a124f0b0bbeb737a88b67643f4910839aa3e43e5e2e567731d047fe3)

---

## 🚀 How to Use

1. Open [Remix IDE](https://remix.ethereum.org).
2. Paste the code into a new file named `KindChain.sol`.
3. Compile the contract (version 0.8.x).
4. Deploy it using a test wallet like MetaMask.
5. Use `recordAct()` to log your kindness messages.

---

## 🪙 License

This project is licensed under the **MIT License**.

---

> 🌈 *Spread kindness, one block at a time.*
