pragma solidity ^0.8.0;

import "forge-std/Test.sol";

pragma solidity ^0.8.17;


contract addressThis is Test {

    // 取当前合约的地址
    function testGetAddress() public  {
        console2.log(address(this));
        bytes memory addrBytes = _toBytes(address(this));
//        console2.log(addrBytes);
    }

    function _toBytes(address a) internal pure returns (bytes memory b) {
        assembly {
            let m := mload(0x40)
            a := and(a, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
            mstore(
            add(m, 20),
            xor(0x140000000000000000000000000000000000000000, a)
            )
            mstore(0x40, add(m, 52))
            b := m
        }
    }

}