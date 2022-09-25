// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MinSubArrLen {
    /*
    Write a function called minSubArrayLen which accepts two parameters - an array of positive integers and a positive integer.
    This function should return the minimal length of a contiguous subarray of which 
    the sum is greater than or equal to the integer passed to the function. 
    If there isn't one, return 0 instead.
    Examples: minSubArrayLen([2,3,1,2,4,3], 7) // 2 -> because [4,3] is the smallest subarray
   */

    function minSubArrayLen(uint256 n, uint256[] memory a)
        public
        pure
        returns (uint256)
    {
        uint256 l = 0;
        uint256 r = 0;
        uint256 shortest = 2 ^ (256 - 1);
        uint256 total = 0;
        while (l < a.length) {
            if (total < n && r < a.length) {
                total += a[r];
                r++;
            } else if (total >= n) {
                shortest = shortest < (r - l) ? shortest : r - l;
                total -= a[l];
                l++;
            } else {
                break;
            }
        }

        return shortest == 2 ^ (256 - 1) ? 0 : shortest;
    }
}
