// SPDX-License-Identifier: MIT
pragma solidity 0.6.10;

import {ITrueFiPool2} from "./ITrueFiPool2.sol";

interface ITrueRateAdjuster {
    function rate(ITrueFiPool2 pool, uint8 score) external view returns (uint256);

    function proFormaRate(
        ITrueFiPool2 pool,
        uint8 score,
        uint256 amount
    ) external view returns (uint256);

    function securedRate(ITrueFiPool2 pool) external view returns (uint256);

    function poolBasicRate(ITrueFiPool2 pool) external view returns (uint256);

    function combinedRate(uint256 partialRate, uint256 __creditScoreAdjustmentRate) external pure returns (uint256);

    function creditScoreAdjustmentRate(uint8 score) external view returns (uint256);

    function utilizationAdjustmentRate(ITrueFiPool2 pool) external view returns (uint256);
}