// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "../interfaces/IERC1155CustomUpgradeable.sol";
import "../interfaces/INFTMinterUpgradeable.sol";

contract NFTMinterUpgradeableV1 is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    INFTMinterUpgradeable
{
    IERC1155CustomUpgradeable nftToken;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address _nftToken) public initializer {
        nftToken = IERC1155CustomUpgradeable(_nftToken);

        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyOwner
    {}

    function mintNFT() public virtual {
        nftToken.mint(_msgSender(), 0, 1, "");
    }
}
