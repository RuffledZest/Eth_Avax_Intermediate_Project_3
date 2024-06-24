// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    

    constructor(address owner_address) Ownable(owner_address) ERC20('RUFFLEDZEST', 'RFZ') {
        uint256 totalSupply = 10; 
        _mint(owner_address, totalSupply);
    }

    
    function mint(address to, uint256 val) public onlyOwner {
        _mint(to, val);
        
    }
    
    function burn(uint256 val) public {
        _burn(_msgSender(), val);
    }

    function transferFrom(address from, address to, uint256 value) public override returns (bool) {
        require(verify(to), "Invalid address");
        return super.transferFrom(from, to, value);
    }

    function verify(address to) public pure returns (bool) {
        if (to == address(0)) {
            return false;
        }
        return true;
    }

    
}

