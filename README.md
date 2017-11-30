# Simple Agenda in Blockchain

Code sample for a simple contact agenda in the Ethereum Blockchain.
A prototype coded for educational purpose, to learn and improve solidity and ethereum development skills, should not be used in production.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* NodeJs
* Truffle Framework
* TestRPC
* A TextEditor(I use Visual Studio Code)

### Installing

1. Install Node Js

[NodeJs Download](https://nodejs.org/en/download/)

2. Install Truffle Framework and TestRPC

```
$ npm install -g npm
$ npm install -g -production windows-build-tools
$ npm install -g ethereumjs-testrpc
$ npm install -g truffle
```

## Running the tests

After install the required packages, you'll need to open cmd (or similar) in the project folder.

1. Execute the following command

```
testrpc
```

2. Open a new cmd

```
truffle migrate
truffle test
```

## Obs

I'll update the project with a UI, then you'll be able to use a TestRPC Account, connect with Metamask and test the smart contract functions:

1. Insert new Contact
2. Count the Contacts
3. Delete a Contact
4. Search a Contact with his Number
