// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Attacker9 {
    function attack(address payable targetAddr) external payable {
        (bool sent, ) = targetAddr.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
