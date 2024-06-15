// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

interface IFillerMarket {
    // @audit-info unused error
    error SignerIsNotVaultOwner();

    error CallerIsNotFiller();

    error SettlementContractIsNotWhitelisted();

    // e this is the SignedOrder
    struct SignedOrder {
        bytes order;
        bytes sig;
    }

    struct SettlementParams {
        address contractAddress;
        bytes encodedData;
        uint256 maxQuoteAmount;
        uint256 price;
        int256 fee;
    }

    struct SettlementParamsV3 {
        address contractAddress;
        bytes encodedData;
        uint256 maxQuoteAmountPrice;
        uint256 minQuoteAmountPrice;
        uint256 price;
        uint256 feePrice;
        uint256 minFee;
    }
}
