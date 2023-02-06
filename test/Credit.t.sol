pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/credit/Credit.sol";

contract CreditTest is Test {
    Credit public credit;

    function setUp() public {
        credit = new Credit();
    }

    function testSetCredit() public {
        address addr = msg.sender;
        uint256 amount  = uint256(123);
        credit.setCredit(addr, amount);

        console.log(credit.credits);
    }


}
