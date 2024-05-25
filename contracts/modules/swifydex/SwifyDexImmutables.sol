// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

struct SwifyDexParameters {
    address v2Factory;
    address v3Factory;
    bytes32 pairInitCodeHash;
    bytes32 poolInitCodeHash;
}

contract SwifyDexImmutables {
    /// @dev The address of UniswapV2Factory
    address internal immutable UNISWAP_V2_FACTORY;

    /// @dev The UniswapV2Pair initcodehash
    bytes32 internal immutable UNISWAP_V2_PAIR_INIT_CODE_HASH;

    /// @dev The address of SwifyDexFactory
    address internal immutable SWIFYDEX_FACTORY;

    /// @dev The SwifyDexPool initcodehash
    bytes32 internal immutable SWIFYDEX_POOL_INIT_CODE_HASH;

    constructor(SwifyDexParameters memory params) {
        UNISWAP_V2_FACTORY = params.v2Factory;
        UNISWAP_V2_PAIR_INIT_CODE_HASH = params.pairInitCodeHash;
        SWIFYDEX_FACTORY = params.v3Factory;
        SWIFYDEX_POOL_INIT_CODE_HASH = params.poolInitCodeHash;
    }
}
