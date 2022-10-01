//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract PowerOfNum {
    /*
    Write a function called power which accepts a base and an exponent. 
    The function should return the power of the base to the exponent. 
    This function should mimic the functionality of Math.pow().  
    Do not worry about negative bases and exponents.
    // power(2,0) // 1
    // power(2,2) // 4
    // power(2,4) // 16
    */

    function CalPowerOfNum(uint256 num, uint256 pow) public pure returns (uint256) {
        if (pow == 0) {
            return 1;
        }
        return CalPowerOfNum(num, pow - 1) * num;
    }

}