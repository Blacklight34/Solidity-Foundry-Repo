//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SimpleStorage{
    bool hasFavNum = true;

    uint public num = 34; // uint = uint256 are the same


    //function

    function store(uint _change) public virtual{
        num = _change;
        // num = num + 1;
    }


    // view does not require to send transaction just is used to read the state from the blockchain
    // view, pure -> pure signify that we cant read and also write
    // dont need to spend gas
    // but why execution cost? only when gas required function call it gas is required
    function retrieve() public view virtual returns(uint){
        return num;
    }
}
