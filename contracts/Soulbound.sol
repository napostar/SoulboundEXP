// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoulboundEXPToken is ERC20, Ownable {
    constructor() ERC20("Soulbound EXP Token", "EXP") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    mapping(address => bool) private _approvedMinters;

    function setApprovedMinter(address _approvedMinter, bool approved) public onlyOwner {
        _approvedMinters[_approvedMinter] = approved;
    }

    function _transfer(address from, address to, uint256 amount) internal override {
        //override transfer and make it do nothing... :)
    }
}