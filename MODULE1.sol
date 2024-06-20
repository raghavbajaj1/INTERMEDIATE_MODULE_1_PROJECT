// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Error_handling {
    function HIGH_SQUARE(uint B) public pure returns(uint) {
        require(B > 0, "Input must be greater than 0");
        return B**2;
    }

    function HIGH_CUBE(uint F) public pure returns(uint) {
        if (F <= 0) {
            revert("Input must be greater than 0");
        }
        else{
            return F*F*F;
        }
    }

    uint public num = 0;

    function add() public view returns(uint){
        assert(num >= 0);
        return num + 2;
    }
}
