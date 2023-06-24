# MyTokens
Simple Ethereum ERC-20 token project for managing and transferring tokens.

## Token Details
Token Name: EzCoin
Token Symbol: EZC
Decimals: 18

## Functions
- totalSupply(): Returns the total supply of tokens.
- balanceOf(address _owner): Returns the token balance of the specified address.
- transfer(address _to, uint256 _value): Transfers tokens from the caller's address to the specified address.
- approve(address _spender, uint256 _value): Allows the specified address to spend a certain amount of tokens on behalf of the caller.
- allowance(address _owner, address _spender): Returns the remaining amount of tokens that the specified address can spend on behalf of the token owner.
- transferFrom(address _from, address _to, uint256 _value): Transfers tokens from one address to another, subject to approval and available balance.

## Events
- Transfer(address indexed _from, address indexed _to, uint256 _value): Emitted when tokens are transferred from one account to another.
- Approval(address indexed _owner, address indexed _spender, uint256 _value): Emitted when an address is approved to spend tokens on behalf of the owner.


Note: This is a basic token contract and may not include all the features required for a production-ready implementation.
}
