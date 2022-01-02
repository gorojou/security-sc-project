// SPDX-License-Identifier: Reentrancy example

pragma solidity ^0.4.25;

contract Victim {

  function withdraw() public {
    uint transferAmt = 1 ether; 
    if (!msg.sender.call.value(transferAmt)()) revert();
  }

  function deposit() public payable {}
}