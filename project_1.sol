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