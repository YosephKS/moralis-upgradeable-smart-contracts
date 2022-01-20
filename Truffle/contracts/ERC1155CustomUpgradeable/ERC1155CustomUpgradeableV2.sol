// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract ERC1155CustomUpgradeableV2 is
    Initializable,
    ERC1155Upgradeable,
    UUPSUpgradeable
{
    function initialize() public initializer {
        __ERC1155_init(
            "https://ipfs.moralis.io:2053/ipfs/QmRsFtxBbdm88dGmp2abYVukiT4Qdoi1G3q31KYBoWD9Lr/metadata/{id}.json"
        );
        __UUPSUpgradeable_init();
    }

    function setURI(string memory newuri) public {
        _setURI(newuri);
    }

    function mint(
        address account,
        uint256 id,
        uint256 amount
    ) public {
        _mint(account, id, amount * 2, "");
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public {
        _mintBatch(to, ids, amounts, data);
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
