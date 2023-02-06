// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

 import {MinerAPI} from "../lib/filecoin-solidity/contracts/v0.8/MinerAPI.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;

        MinerAPI.getSectorSize(111);
    }
}
