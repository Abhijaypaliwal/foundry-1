pragma solidity ^0.8.16;

contract Error {
    error notAuthorised();

    function throwError() external {
        require(false, "not authorised");
    }

    function throwCustomError() external {
        revert notAuthorised();
    }

}  