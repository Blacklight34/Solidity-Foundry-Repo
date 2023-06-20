//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    function sayHello() public pure returns(string memory){
        return "Hello";
    }


    //override
    function store(uint _favNum) public override {
        num = _favNum;
    }
}