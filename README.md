# ErrorContract

This Solidity program showcases different error handling techniques in smart contracts. It includes functions for `require`, `revert`, and `assert` statements to handle different scenarios when dealing with an inventory management system.

## Description

This program is a Solidity smart contract that demonstrates error handling techniques using `require`, `revert`, and `assert` statements. It provides functions to check if a given input is greater than zero. Depending on the function called, it will either return a message, revert the transaction, or assert a condition or add an item to the stalk of an inventory.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Visit the Remix website at https://remix.ethereum.org/.

1. Once on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorContract.sol).
2. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    uint256 public stalk = 0;

    function _require(uint256 _no)public returns(string memory, uint256)
    {
        require(_no>0, "The initial stalk cannot is zero, you cannot add 0 items to the inventory");
        stalk += _no;
        return ("Number of items added to the inventory : ", _no );
    }

    function _assert(uint256 _no)public returns (string memory, uint256)
    {
        assert(_no > 0);
        stalk += _no;
        return("Number of items added to the inventory : ", _no);
    }

    function _revert(uint256 _no)public returns(string memory, uint256)
    {
        if(_no == 0)
        {
            revert("You cannot add 0 items to the inventory");
        }
        stalk += _no;
        return("Number of items added to the inventory : ", _no);
    }

    function check_stalk() public view returns (string memory, uint256)
    {
        return("Number of items in the inventory : ", stalk);
    }
}
```

3. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "^0.8.0" (or another compatible version), and then click on the "Compile ErrorContract.sol" button.

4. Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorContract" contract from the dropdown menu, and then click on the "Deploy" button.

5. After deployment, you can interact with the contract by calling its functions. Click on the "ErrorContract" contract in the left-hand sidebar, and then click on any of its functions to interact with it.

## Authors

Deekshith R Prabhu
rpdeeksh288@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
