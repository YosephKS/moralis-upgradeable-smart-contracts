// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

interface INFTMinterUpgradeable {
    function initialize(address _nftToken) external;

    function mintNFT() external;
}
