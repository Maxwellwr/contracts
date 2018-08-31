pragma solidity ^0.4.23;

/**
 * Upgrade agent interface inspired by Lunyr.
 *
 * Upgrade agent transfers tokens to a new contract.
 * Upgrade agent itself can be the token contract, or just a middle man contract doing the heavy lifting.
 */
contract UpgradeAgent {

  uint256 public originalSupply;

  /** Interface marker */
  function isUpgradeAgent() public pure returns (bool) {
    return true;
  }

  function upgradeFrom(address _from, uint256 _value) public;
}