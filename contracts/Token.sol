// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Token {
    // Token details
    string public name = "My Hardhat Token";
    string public symbol = "MHT";
    uint256 public totalSupply = 1000000 * 10**18; // 1 million tokens with 18 decimals

    // The owner of the contract (usually the account that deploys it)
    address public owner;

    // A mapping to track the balances of each address
    mapping(address => uint256) private balances;

    // Transfer event to log transactions
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * Constructor to initialize the contract with total supply to the owner
     */
    constructor() {
        owner = msg.sender; // Set the deployer as the owner
        balances[msg.sender] = totalSupply; // Assign the total supply to the deployer
    }

    /**
     * Transfer tokens from sender to receiver.
     */
    function transfer(address to, uint256 amount) external {
        // Ensure sender has enough balance
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Execute the transfer
        balances[msg.sender] -= amount;
        balances[to] += amount;

        // Emit the transfer event
        emit Transfer(msg.sender, to, amount);
    }

    /**
     * Return the balance of a specific address.
     */
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    /**
     * Optional: Allows the owner to withdraw tokens from the contract, useful for emergency or contract management.
     */
    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(balances[address(this)] >= amount, "Contract has insufficient tokens");
        balances[address(this)] -= amount;
        balances[owner] += amount;
        emit Transfer(address(this), owner, amount);
    }
}
