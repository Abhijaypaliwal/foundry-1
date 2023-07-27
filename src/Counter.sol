// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/console.sol";

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

    function get() public view returns (uint256) {
        return count;
    }

    function inc() public {
        console.log("here",count);
        count += 1;
    }

    function dec() public {
        count -= 1;
    }

    function hello() public pure returns (string memory) {
        return "hi there";
    }

    function returnLoop() public view onlyOwner returns (uint256) {
        uint256 temp = 0;
        for (uint256 i = 0; i <= 100; i++) {
            temp += 1;
        }
        return temp;
    }

    function returnSender() public payable returns (uint256) {
        return msg.value;
    }
}
