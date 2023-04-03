pragma solidity ^0.8.0;

import "./IOracle.sol";

contract TestOracle is IOracle {
    int256 price;

    constructor() {
        price = 554751589071929;
    }

    function setPrice(int256 _price) external {
        price = _price;
    }
    function decimals() external pure override returns (uint8) {
        return 8;
    }

    function latestRoundData()
    external 
    view override
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    ) {
        return (73786976294838215802, price, 1680509051, 1680509051, 73786976294838215802);
    }
}