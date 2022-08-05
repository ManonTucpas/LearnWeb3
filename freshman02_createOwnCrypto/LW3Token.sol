// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import the ERC20 token standart from OpenZeppelin which
// is a security Ethereum company
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Specify a new contract named "LW3Token"
// contract is an instance of ERC20 imported above
contract LW3Token is ERC20 {

    // we need to initialize the ERC20 contract when deploying ours
    // the we pass to the constructor of the ERC20 the parameters than we've passed to our contract
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        /** the msg.sender is the address which made the transaction - my address -
            with _mint function you receive some tokens when you deploy
            in ERC20, tokens works with 18 decimal places. 
            1 full token --> 10 ^ 18
            10 full token --> 10 * 10 ^ 18
            We want to mint 10 tokens           **/
        _mint(msg.sender, 10 * 10 ** 18);
    }

}
