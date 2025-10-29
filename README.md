# 🚔 PoliceCaseLog – Tamper-free FIR Records

## 📝 Project Description
PoliceCaseLog is a blockchain-based decentralized application designed to **store FIR (First Information Report) records securely**. Once a report is added, it becomes **immutable**, ensuring that no unauthorized person can alter or delete any FIR data. This improves **transparency, accountability, and trust** in the legal process.

## 🌍 Project Vision
The vision of **PoliceCaseLog** is to **digitally transform law enforcement record systems** by providing a **tamper-proof, transparent, and decentralized FIR management platform**.  
By leveraging blockchain, it ensures **data integrity**, **public trust**, and **accessibility** for all concerned parties — citizens, police, and judiciary.

## ⚙️ Key Features
- **Tamper-Free FIRs:** Once recorded, no one (not even the admin) can modify or delete records.
- **Timestamped Records:** Each FIR includes a blockchain-generated timestamp.
- **Public Verification:** Anyone can verify the existence and authenticity of an FIR.
- **Transparency:** Open and auditable system to promote citizen trust.
- **Smart Contract Security:** Uses Solidity and Ethereum blockchain for reliable storage.

## 🧠 Core Smart Contract Functions
1. **fileFIR()** – Allows a police officer or authorized user to file a new FIR.  
2. **getFIR()** – Retrieves the details of any FIR using its ID.  
3. **verifyFIR()** – Checks whether a specific FIR exists on the blockchain.

---

### 🛠️ Tech Stack
- **Language:** Solidity  
- **Blockchain Platform:** Ethereum  
- **Tools:** Remix IDE / Hardhat / Truffle  
- **Network:** Localhost / Testnet (Goerli, Sepolia)

---

### 📈 Future Enhancements
- Role-based access (Police, Citizen, Court)
- IPFS integration for document uploads
- Web3 frontend dashboard for easy FIR registration and lookup
