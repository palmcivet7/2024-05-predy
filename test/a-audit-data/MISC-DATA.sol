// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// // SpotMarket::executeOrder

// struct OrderInfo {
//     address market;
//     address trader;
//     uint256 nonce;
//     uint256 deadline;
// }

// struct SpotOrder {
//     OrderInfo info;
//     address quoteToken;
//     address baseToken;
//     int256 baseTokenAmount;
//     uint256 quoteTokenAmount;
//     uint256 limitQuoteTokenAmount;
//     bytes auctionData;
// }

// struct SignedOrder {
//     bytes order;
//     bytes sig;
// }

// struct SettlementParams {
//     address contractAddress;
//     bytes encodedData;
//     uint256 maxQuoteAmount;
//     uint256 price;
//     int256 fee;
// }

// ////////////////
// // SettlementCallbackLib::execSettlement

// struct SettlementParams {
//     address sender;
//     address contractAddress;
//     bytes encodedData;
//     uint256 maxQuoteAmount;
//     uint256 price;
//     int256 fee;
// }

// contract Misc {}
