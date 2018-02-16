pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Embrio is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Embrio(address _owner)  UpgradeableToken(_owner) {
    name = "Embrio";
    symbol = "EMB";
    totalSupply = 700000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}