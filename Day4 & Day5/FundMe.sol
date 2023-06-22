//SPDX-License-Identifier: MIT


pragma solidity 0.8.19;
import {PriceConversion} from "./PriceConversion.sol";
contract FundMe{
    address publicOwner;
    constructor(){
        publicOwner = msg.sender;
    }
    using PriceConverter for uint256;
    uint minimumUsd = 5e18;
    mapping (address depositer => uint amount) public addToAmt;
    address[] depositers;
    function fund() public payable{
        require(msg.value.getConversion() >= minimumUsd, "Not enough");
        depositers.push(msg.sender);
        addToAmt[msg.sender] = addToAmt[msg.sender] + msg.value.getConversion();
    }
    //ETH/USD = 0x694AA1769357215DE4FAC081bf1f309aDC325306

    // function getConversion(uint _ethAmount) public view returns(uint){
    //     uint ethPrice = getPrice();
    //     uint ethAmtInUsd = (_ethAmount * ethPrice) / 1e18;
    //     return ethAmtInUsd;

    // } 
    // function getPrice() public view returns(uint){
    //     AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    //     (,int256 price,,,) = priceFeed.latestRoundData();
    //     return uint(price * 1e10);
    // }
    function withdraw() public checkOwner{
        // require(msg.sender == publicOwner, "Not Authorised");
        for(uint funderIndex = 0; funderIndex < depositers.length; funderIndex++){
            address funder = depositers[funderIndex];
            addToAmt[funder] = 0;
        }
        depositers = new address[](0);

        //transfer 2300, returns error
        // payable(msg.sender).transfer(address(this).balance); //2300 gas
        //send 2300, returns bool
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send Failed");
        // call => lower level command use it to call virtually call any function
        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call Failed");
    }

    modifier checkOwner(){
        require(msg.sender == publicOwner,"Sender is not Owner");
        _;
    }
}