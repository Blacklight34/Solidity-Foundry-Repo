//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";
contract SS is SimpleStorage{
    function retrieve() public override pure returns(uint){
        return 5;
    }
}