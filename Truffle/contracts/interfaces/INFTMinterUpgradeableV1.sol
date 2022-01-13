// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

interface INFTMinterUpgradeableV1 {
    function initialize(address _nftToken) external;

    function mintNFT(address to, uint256 tokenId) external;
}
