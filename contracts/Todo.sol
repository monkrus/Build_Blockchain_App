pragma solidity ^0.5.0;

contract Todo {
//state variable, written in the blockchain
// public keyword allows to read the value
uint public taskCount = 0;

}



// prereq.  node, ganache(from truffle), metamask
// npm install -g truffle@5.0.2
// if getting a "Keccak bindings compilation fail. Pure JS implementation will be used."
// npm install -g truffle --unsafe-perm
// npm install --global windows-build-tools
// truffle init ( create truf project)
// package.json
// npm init
// update truffle-config.js
// truffle migrate
