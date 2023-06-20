//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract SimpleStorage{
    uint favNumber;

    struct Person{
        string name;
        uint favNumber;
    }

    //Array of Person
    // Person public friend = Person("Sahil", 34);
    Person[] public people;

    //Better adding a mapping;

    mapping (string => uint) public  nameToNum;



    function setFavNumber(uint _favNum) public{
        favNumber = _favNum;
    }
    function getFavNumber() public view returns(uint){
        return favNumber;
    }

    function setSinglePerson(uint _num, string memory _name) public{
        people.push(Person(_name, _num));
    }

    function getSinglePerson(uint _indx) public view returns(Person memory){
        return people[_indx];
    }

    function addPair(uint _num, string memory _name) public{
        nameToNum[_name] = _num;
    }
}