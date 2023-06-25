# EzTokens
Simple Ethereum ERC-20 token project for managing and transferring tokens.

## License
This code is licensed under the GPL-3.0 license.

## Overview
This contract is a simple implementation of the ERC20 token standard. It allows token transfers between addresses, balance inquiries, and approval of token transfers to other addresses or contracts.

## Contract Details
- Contract Name: BasicToken
- Token Name: EzCoin
- Token Symbol: EZC
- Decimals: 18

## State Variables
- _totalSupply: The total supply of EzCoin tokens.
- balances: A mapping that stores the token balances of each address.
- allowed: A mapping that stores the approved token transfer amounts for each address.

## Events
### Transfer
```solidity
event Transfer(address indexed _from, address indexed _to, uint256 _value);
```
- Fired whenever tokens are transferred from one account to another.
- Provides information about the sender, recipient, and transferred amount.

### Approval
```solidity
event Approval(address indexed _owner, address indexed _spender, uint256 _value);
```
- Fired when an owner approves a spender to manage their tokens.
- Provides information about the owner, spender, and approved token amount.

## Constructor
```solidity
constructor(uint256 total)
```
- Initializes the contract with a given total supply of tokens.
- Sets the total supply as the balance of the contract deployer (msg.sender).

## Functions
### totalSupply
```solidity
function totalSupply() public view returns (uint256)
```
- Returns the total supply of EzCoin tokens.

### balanceOf
```solidity
function balanceOf(address _owner) public view returns (uint256)
```
- Returns the token balance of the specified address.

### transfer
```solidity
function transfer(address _to, uint256 _value) public returns (bool success)
```
- Transfers a specified amount of tokens from the sender's wallet to the specified address.
- Requires that the sender's balance is sufficient to perform the transfer.

### approve
```solidity
function approve(address _spender, uint256 _value) public returns (bool success)
```
- Allows the sender to approve a certain quantity of tokens to be spent by the specified spender address or contract.

### allowance
```solidity
function allowance(address _owner, address _spender) public view returns (uint256 remaining)
```
- Returns the remaining amount of tokens that the spender is allowed to use on behalf of the owner.

### transferFrom
```solidity
function transferFrom(address _to, address _from, uint256 _value) public returns (bool success)
```
- Transfers a specified amount of tokens from the sender's wallet to the specified address on behalf of the owner.
- Requires that the sender has been approved by the owner to spend the tokens and that the owner's balance is sufficient to perform the transfer.


_Note: This is a basic token contract and may not include all the features required for a production-ready implementation._

