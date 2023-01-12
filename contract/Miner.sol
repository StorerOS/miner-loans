pragma solidity ^0.8.0;

import "@zondax/filecoin-solidity/contracts/v0.8/MinerAPI.sol";
import { MinerTypes } from "@zondax/filecoin-solidity/contracts/v0.8/types/MinerTypes.sol";

contract LoansContract {

    function getBeneficiary() external returns (MinerTypes.GetBeneficiaryReturn memory) {
        bytes memory addr = bytes("0xff000000000000000000000000000000000003e9");
        MinerTypes.GetBeneficiaryReturn memory response = MinerAPI.getBeneficiary(addr);
        return response;
    }

}
