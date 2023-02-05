pragma solidity ^0.8.17;

import "forge-std/Test.sol";

import { MinerAPI } from "filecoin-solidity/v0.8/MinerAPI.sol";
import { MinerTypes } from "filecoin-solidity/v0.8/types/MinerTypes.sol";
import { SendAPI } from "filecoin-solidity/v0.8/SendAPI.sol";


contract MinerLoans {
    uint64 minerID;
    uint256 quota;
    uint64 expiration;

    address owner;

    constructor(uint64 memory miner,bytes memory new_beneficiary, uint256 new_quota, uint64 new_expiration)  {
        owner = msg.sender;
        minerID = miner;
        quota = new_quota;
        expiration = new_expiration;
        bytes memory new_beneficiary = bytes(minerID);

        MinerTypes.ChangeBeneficiaryParams memory params = MinerTypes.ChangeBeneficiaryParams(new_expiration, quota, expiration);
        MinerAPI.changeBeneficiary(miner, params);
    }

    function loan(uint256 amount) public {

    }

}