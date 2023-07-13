

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Counter {
    uint256 public count;
    address immutable _owner;

    constructor() {
       // _owner = msg.sender;
       _owner = msg.sender;

    }

    modifier onlyOwner() {
        require(msg.sender == _owner, "owner is not present");
        _;
    }

    function get() public view returns(uint) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public  {
        count -= 1;
    }

    function hello() public pure returns(string memory) {
        return "hi there";
    }

    function returnLoop() public view  onlyOwner returns(uint) {
        uint temp = 0;
        for(uint i = 0; i <=100; i++) {
            temp+=1;
        }
        return temp;
    }

    function returnSender() public payable returns (uint) {
        
        return msg.value;
    }
}