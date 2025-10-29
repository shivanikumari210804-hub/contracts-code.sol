# 🗳️ Simple Decentralized Voting System

A simple beginner-friendly **Solidity smart contract** that allows users to vote for predefined candidates on the Ethereum blockchain.  
The system ensures that every wallet address can vote **only once**, and all results are stored transparently on-chain.

---

## 🚀 Features

- ✅ Predefined list of candidates  
- 🗳️ One vote per wallet address  
- 👑 Owner can add new candidates  
- 📊 Publicly viewable vote results  
- 🔒 Transparent and tamper-proof

---

## ⚙️ Smart Contract Details

**Contract Name:** `SimpleVoting`  
**Language:** Solidity  
**Version:** `^0.8.0`

### 📘 Key Functions

| Function | Description |
|-----------|--------------|
| `vote(string candidateName)` | Vote for a candidate (each address can only vote once). |
| `totalVotesFor(string candidateName)` | Check how many votes a candidate has received. |
| `addCandidate(string candidateName)` | Add a new candidate (owner only). |
| `getAllCandidates()` | Retrieve the full list of candidates. |

---

## 🧠 How It Works

1. **Deploy** the contract with an initial list of candidates:
   ```solidity
   ["Alice", "Bob", "Charlie"]


## Contract Address: 0x28b2F7540B7C9eFF02A6B03A3F011EFb1A02909B
