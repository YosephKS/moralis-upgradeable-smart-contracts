// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./NFTMinterUpgradeableV1.sol";

contract NFTMinterUpgradeableV2 is NFTMinterUpgradeableV1 {
    function mintNFT() public override {
        nftToken.mint(_msgSender(), 1, 1, "");
    }
}
