// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Averagepair {
    /*
        Write a function called averagePair. Given a sorted array of integers and a target average, 
        determine if there is a pair of values in the array where the average of the pair equals the target average. 
        There may be more than one pair that matches the average target.

        Bonus Constraints:

        Time: O(N)

        Space: O(1)

        Sample Input:

        averagePair([1,2,3,5],4) // true
        averagePair([1,3,3,5,6,7,10,12,19],8) // true
    */
    

    //NOTE you cant have decimal / floating number in solidity

        function main(uint256[] memory arr, uint256 num) public pure returns (bool) {
        uint256 l = 0;
        uint256 r = arr.length - 1;

        while (l < r) {
            if ((arr[l] + arr[r]) / 2 > num) {
                r--;
            } else if ((arr[l] + arr[r]) / 2 < num) {
                l++;
            } else {
                return true;
            }
        }

        return false;
    }
}