// SPDX-License-Identifier: No Reentrancy
pragma solidity ^0.4.25;

contract NoReentrancy {
   
    modifier noReentrant() {
    require (!locked, “No re-entrancy”);
    locked = True;
    _;
    Locked =false

}