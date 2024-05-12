// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint public myNumber;

    function setNumber(uint _num) public {
        // Require condition to ensure _num is not zero
        require(_num != 0, "Number cannot be zero");

        // Set myNumber to the provided _num
        myNumber = _num;
    }

    function assertExample(uint _x) public pure returns (uint) {
        uint y = _x + 10;

        // Assert condition to check internal consistency
        assert(y > _x);

        return y;
    }

    function revertExample(uint _num) public pure returns (string memory) {
        // Check if _num is the magic number (42) and revert with a message
        if (_num == 42) {
            revert("Magic number detected!");
        }

        return "No magic here";
    }
}
