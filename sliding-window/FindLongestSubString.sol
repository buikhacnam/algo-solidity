// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FindLongestSubString {
    /*
    Write a function called findLongestSubstring, which accepts a string and returns the length of the longest substring with all distinct characters.
    findLongestSubstring[''] // 0
    findLongestSubstring['a','b','b','a'] // 2
    */

    // how to calculate the length of a string -> too complicated

    // only define mapping as global variable??
    mapping(string => uint256) private seen; 

    function main(string[] memory s) public returns (uint256) {
        uint256 l = 0;
        uint256 longest = 0;
        for ( uint256 r = 0;r < s.length; r++) {
            // if seen[r] existed. it does not return the default value (0)
            if (seen[s[r]] != 0) {
                l = l > seen[ s[r]] ? l : seen[s[r]];
            }
            longest = r - l + 1 > longest ? r - l + 1: longest;
            seen[s[r]] = r + 1;
        }
        return longest;

        // how to clear a mapping ->  you cant, Your only option is to iterate through the keys.
    }

}