# e-voting_blockchain

A  novel  implementation  of  e-votingusing  Ethereum is  proposed  which  fulfills  voting  principles  of secret ballot, one man-one vote, transparency, recording and counting votes accurately and reliability.
Here, we are using Ethereum blockchain to demonstrate e-voting. Truffle framework provides a developer-friendly environment to code smart contracts using Solidity programming, the backend is connected to User interface using web3.js library and truffle provides inbuilt Ganache, which sets up ethereum accounts with dummy ether for experimental use.

#### Software configuration:####
* Truffle v5.1.13
* Solidity v0.5.16
* Web3.js v1.2.1
* Node v10.20.1
* Metamask browser extension

#### How to execute:
* compile:
  * truffle migrate
	* truffle migrate --reset (if you change code, run this to take up all the migrations from start)
* run application:
  * npm run dev
  
 You can check the output at <http://localhost:3000/>

