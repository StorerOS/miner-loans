pragma solidity ^0.8.0;

contract Credit {
    struct CreditInfo {
        address  addr;
        uint256  amount;
    }

    CreditInfo[] public credits;

    function setCredit(address addr, uint256 amount) public {
        credits.push(CreditInfo(addr, amount));
    }

    function getCredit() public view returns (CreditInfo[] memory){
        return credits;
    }
}
