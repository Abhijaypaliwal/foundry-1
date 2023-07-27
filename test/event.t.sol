pragma solidity ^0.8.18;

import "forge-std/Test.sol";
import {Event} from "../src/event.sol";


contract EventTest is Test {
    Event public e;

    event Transfer(address indexed from, address indexed to, uint256 amount );

    function setUp() public {
        e= new Event();
    }

    function testEmitTransferEvent() public {

        vm.expectEmit(true, false, false, false);

        emit Transfer(address(this), address(123), 456);

        e.transfer(address(this), address(234), 456);

      //  vm.expectEmit(true, false, false, false);

       // emit Transfer(address(this), address(123), 456);

      //  e.transfer(address(this), address(123), 456);

    }

    function testEmitManyTransferEvent() public {

    }


}