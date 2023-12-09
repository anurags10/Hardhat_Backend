// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract Token {
    string public TokenName = 'My First Token';
    string public Symbol = 'MFT';
    uint256 public totalSupply = 1000000;
    mapping (address => uint) balances;
    address public owner;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint256 _amount) external{
        require(balances[msg.sender] >= _amount, "Insufficient Token");
        console.log(
        "Transferring from %s to %s %s tokens",
        msg.sender,
        to,
        _amount
    );
        balances[msg.sender] -= _amount;
        balances[to] += _amount;
        emit Transfer(msg.sender, to, _amount);
    }
    function balnceOf(address account) external view returns(uint256) {
        return balances[account];
    }
}