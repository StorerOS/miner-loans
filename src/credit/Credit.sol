pragma solidity ^0.8.0;

    struct CreditInfo {
        address  addr;
        uint256  amount;
    }


contract Credit {
    CreditInfo[] public credits;

    function setOneCredit(address addr, uint256 amount) public {
        credits.push(CreditInfo(addr, amount));
    }

    function getAllCredit() public returns (CreditInfo memory){
        return credits[0];
    }
}
