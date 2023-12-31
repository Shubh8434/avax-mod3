// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PercyJackson is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("PercyJackson", "PK")
        Ownable(initialOwner)
    {
    }

    function mint(address addr, uint256 token) public onlyOwner {
        _mint(addr, token);
    }

    function burn(address addr, uint256 token) public onlyOwner {
        _burn(addr, token);
    }
}
