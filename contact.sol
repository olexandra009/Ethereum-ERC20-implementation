pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyContract is ERC20 {

    

    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {

        _mint(msg.sender, initialSupply);

    }

    

    receive() external payable {

          uint256 value = msg.value * 10;

         _mint(msg.sender, value);

    }

 

}