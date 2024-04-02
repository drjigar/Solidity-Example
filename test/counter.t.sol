// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test,console} from "forge-std/Test.sol";
import {Counter} from "../src/counter.sol";

contract testCounter is Test{
    
    Counter public counterT;

    function setUp() public{
        counterT = new Counter();
     }
     function testInc() public {
        counterT.inc();
        console.log(counterT.count());
        assertEq(counterT.count(), 1);
     }
     function testFailDec() public {
        counterT.dec();
     }
     function testFailUnderflow() public {
        // vm.expectRevert(stdError.arithmeticError);
        counterT.dec();
     }
     function testDec() public {
        counterT.inc();
        counterT.inc();
        console.log(counterT.count());
        counterT.dec();
        console.log(counterT.count());
        assertEq(counterT.count(), 1);
    
     }

}