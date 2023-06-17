//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SimpleStorage{
    // bool hasFavNum = true;

    uint public num = 34; // uint = uint256 are the same
    uint[] arrayOfFavouriteNumber;

    struct Person{
        uint favN;
        string name;
    }


    //User-Made variable
    Person public myFriend = Person(7, "Sahil");


    //User-Made Type Array
    Person[] public listOfPeople;
    
    
    //function
    
    function store(uint _change) public{
        num = _change;
        // num = num + 1;
    }


    // view does not require to send transaction just is used to read the state from the blockchain
    // view, pure -> pure signify that we cant read and also write
    // dont need to spend gas
    // but why execution cost? only when gas required function call it gas is required
    function retrieve() public view returns(uint){
        return num;
    }
    //same as push_back in vector and has a public function and can be retieved by index number
    function addPerson(uint _favNum, string memory _name) public {
        listOfPeople.push(Person(_favNum, _name));
    }
}
