// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IERC721CustomUpgradeable.sol";
import "./interfaces/INFTMinterUpgradeableV1.sol";

contract NFTMinterUpgradeable is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    INFTMinterUpgradeableV1
{
    IERC721CustomUpgradeable nftToken;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address _nftToken) public initializer {
        nftToken = IERC721CustomUpgradeable(_nftToken);

        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyOwner
    {}

    function mintNFT(address to, uint256 tokenId) public {
        nftToken.safeMint(to, tokenId);
    }
}
