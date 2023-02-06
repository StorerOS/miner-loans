pragma solidity ^0.8.17;

import { MinerAPI } from "../lib/filecoin-solidity/contracts/v0.8/MinerAPI.sol";
import { MinerTypes } from "../lib/filecoin-solidity/contracts/v0.8/types/MinerTypes.sol";

contract MinerApi {

    event LogBytes(bytes params);
    event LogGetOwnerReturn(MinerTypes.GetOwnerReturn params);

    function getAddr(bytes memory miner) public returns (MinerTypes.GetOwnerReturn memory) {
        emit LogBytes(miner);
        MinerTypes.GetOwnerReturn memory result =  MinerAPI.getOwner(miner);
        emit LogGetOwnerReturn(result);
        return result;
    }
}
