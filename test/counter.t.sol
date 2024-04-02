// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test,console} from "forge-std/Test.sol";
import {Counter} from "../src/counter.sol";

contract testCounter is Test{
    
    Counter public counter;

    function setUp() public{
        counter = new Counter();
     }
     function testInc() public {
        counter.inc();
        console.log(counter.count());
        assertEq(counter.count() , 1);
     }
     function testFailDec() public {
        counter.dec();
     }
     function testFailUnderflow() public {
        // vm.expectRevert(stdError.arithmeticError);
        counter.dec();
     }
     function testDec() public {
        counter.inc();
        counter.inc();
        console.log(counter.count());
        counter.dec();
        assertEq(counter.count() , 1);
    
     }

}