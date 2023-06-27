// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract EzTokens{
    string public constant name = 'EzCoin';
    string public constant symbol = 'EZC';
    uint8 public constant decimals = 18;

    uint256 _totalSupply; //how many tokens to distribute

    mapping(address => uint256) balances;
    mapping(address => mapping (address => uint256)) allowed;

    //fires whenever a token is transferred from one account to another
    event Transfer(address indexed _from, address indexed _to, uint _value);
    //fires when Owner lets a spender to manage their tokens
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    constructor(uint256 total){
        _totalSupply = total;
        balances[msg.sender] = total;
    }

    //whole quantity of tokens
    function totalSupply() public view returns(uint256){
        return _totalSupply;
    }
    //owners balance
    function balanceOf(address _owner) public view returns (uint){
        return balances[_owner];
    }

    //transfers the tokens from the wallet calling the function to the one specified
    function transfer(address _to, uint256 _value) public returns (bool success){
        require(_value <= balances[msg.sender], "There are not enough funds to perform this transaction.");
        
        balances[msg.sender] = balances[msg.sender] - _value;
        balances[_to] = balances[_to] + _value;
        
        emit Transfer(msg.sender, _to, _value);

        success = true;
    }

    //allows to manage a certain quantity of tokens
    //could authorize other smart contracts too
    function approve(address _spender, uint256 _value) public returns (bool success){
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);

        success = true;
    }

    //returns remaining amount of tokens that spender can use
    function allowance(address _owner, address _spender) public view returns(uint256 remaining){
        remaining = allowed[_owner][_spender];
    }

    function transferFrom(address _to, address _from, uint256 _value) public returns (bool success){
        //checks that msg.sender has been allowed by _from wallet
        require(_value <= balances[_from], "Cash is not sufficient");
        require(_value <= allowed[_from][msg.sender], "Sender not allowed"); 
    
        balances[_from] = balances[_from] - _value;
        balances[_to] = balances[_to] + _value;

        emit Transfer(_from, _to, _value);
        success = true;
    }
}
