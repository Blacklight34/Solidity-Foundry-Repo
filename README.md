## [Solidity Foundry Course](https://www.youtube.com/watch?v=umepbfKp5rI)


### DAY 1

    __**Basics**__ : Completed it in the 32 hours long solidity course. Ofc from Patrick.


    __**Learnt Today**__ : 
    1) Usage if remix ide
    2) Basic Solidity Syntax: (pragma)
        ` pragma solidity 0.8.20; `
        The above syntax is use to tell the solidity version features used in the files and also the compiler using it.
    3) contract keywords : 
        ``` contract ContractName {

            }
        ```
        It is used to create a contract.
    4) Datatypes in solidity:
        **Simple:**
        uint -> store unsigned interger which means only positive numbers.
             -> is available in variable sizes -> uint8, uint16, uint64, ... uint256. uint <=> uint256.
        int  -> store signed integer meaning can store negative as well as positive.
             -> similar sizes as mentioned for uint.
        bool -> it is used to store true or false.
        string -> used to store collection of character i.e. a string.
        bytes32 -> internally string are stored as bytes32.
        address -> used to store address in a variable.(For EVM Address -> 0xc1587bf051a81a199ec46cab7418487b765dd3e6)

        **Complex Datatypes:**
        Array: Its contiguous alloction of data. Can be fixed-sized as well as dynamic size.
               Dynamic - `uint[] public arr;`
               Static  - `uint[3] public arr`

        Struct: It is used to create user defined data types 

        ``` struct Person {
                int name;
                uint age;
            }   
        ```
    5) Functions in Solidity and bit about gas
        Function can either be used to write data to the blockchain or read data from the chain
        And and also any change made to the blockchain a transaction is sent and gas is used.
        And to read the data from the blockchain through the function the function must be of type view.
        Actually there are 2 props(dont know what to call them) 
        1) view - the function with this can be used to read data from the blockchain.
        2) pure - neither can be read nor is writable.

        

                         
    