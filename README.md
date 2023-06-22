# Solidity Foundry Course

This repository serves as the documentation and codebase for the Solidity Foundry Course, taught by Patrick. The course focuses on learning the basics of Solidity, a programming language used for writing smart contracts on the Ethereum blockchain.

## Day 1

### Basics

I completed the 32-hour long Solidity course, covering the fundamentals of Solidity development.

### What I Learned Today

1. Usage of Remix IDE: I explored the Remix IDE, which is a web-based development environment for writing, testing, and deploying Solidity smart contracts.

2. Basic Solidity Syntax: I learned about the `pragma` statement in Solidity, which is used to specify the compiler version and features used in the contract. For example:

   ```solidity
   pragma solidity 0.8.20;
   ```

   This statement ensures that the contract is compiled using Solidity version 0.8.20.

3. Contract Keywords: I discovered the usage of the `contract` keyword, which is used to create a contract in Solidity. Here's an example:

   ```solidity
   contract ContractName {
       // Contract code goes here
   }
   ```

4. Solidity Data Types: I gained an understanding of the different data types available in Solidity:

   - Simple Data Types:
     - `uint`: Used to store unsigned integers (positive numbers). It has various variable sizes such as `uint8`, `uint16`, `uint64`, up to `uint256`, with `uint` being synonymous with `uint256`.
     - `int`: Used to store signed integers (both positive and negative). Similar variable sizes as `uint` are available.
     - `bool`: Used to store boolean values (`true` or `false`).
     - `string`: Used to store a collection of characters (i.e., a string).
     - `bytes32`: Used to store strings internally as 32-byte values.
     - `address`: Used to store Ethereum addresses (e.g., `0xc1587bf051a81a199ec46cab7418487b765dd3e6`).

   - Complex Data Types:
     - Array: A contiguous allocation of data that can be either fixed-sized or dynamic-sized. Examples:
       - Dynamic Array: `uint[] public arr;`
       - Static Array: `uint[3] public arr;`
     - Struct: Used to define user-defined data types. Example:

       ```solidity
       struct Person {
           int name;
           uint age;
       }
       ```

5. Functions in Solidity and Gas: I learned about functions in Solidity, which can either be used to read data from the blockchain or write data to it. When making changes to the blockchain, a transaction is sent and gas is consumed. Functions that read data are marked as `view`, while functions that neither read nor write are marked as `pure`.

These are the concepts covered in the first day of the Solidity Foundry Course. Please refer to the [YouTube video](https://www.youtube.com/watch?v=umepbfKp5rI) for more detailed explanations and examples.

**Note**: This README file is a sample representation of the information provided and does not include the actual content of the course.