# security-sc-project

A reentrancy attack involves two smart contracts. A victims contract that contains bad code and an untrusted attackers contract.

Contract A calls a function in contract B
Then contract B calls back into contract A while contract A is still processing