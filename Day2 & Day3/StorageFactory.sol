//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory{
    //array of SimpleStorage where at each index there will be simplestorage contract
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContract() public {
        listOfSimpleStorage.push(new SimpleStorage());
    }

    function sfStore(uint _simpleStorageIndex, uint _newSimpleStorageNumber) public{
        //ABI = Application Binary Interface
        listOfSimpleStorage[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }   
    function sfretrieve(uint _simpleStorageIndex) public view returns(uint){
        //Simplified: SimpleStorage sfe = listOfSimpleStorage[_simpleStorageIndex];
        //sfe.retrieve();
        return listOfSimpleStorage[_simpleStorageIndex].retrieve();
    }
}