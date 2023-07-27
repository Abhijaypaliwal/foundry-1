pragma solidity ^0.8.18;

contract Event {
    event Transfer(address indexed from, address indexed to, uint amount);

    function transfer(address from, address to, uint256 amount) external {
        emit Transfer(from, to, amount);
    }

    function transferMany(address from, address[] calldata to, uint[] memory amounts) public {
         for(uint256 i=0; i< to.length;i++ ) {
          emit Transfer(from, to[i], amounts[i]);

         }
    }






}