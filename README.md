# Maemae

This project demonstrates the use of require(), assert(), and revert() statements in Solidity smart contracts.

## Description

This Solidity smart contract provides examples of error handling techniques using require(), assert(), and revert() statements:

- The `setNumber` function demonstrates using `require()` to validate input conditions before updating a state variable.
- The `assertExample` function showcases `assert()` to check for internal errors within a pure function.
- The `revertExample` function illustrates using `revert()` to revert a transaction based on certain conditions.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

Metacrafter
[@yannaarmaza]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
