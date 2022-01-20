// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/interfaces/IERC1155Upgradeable.sol";

interface IERC1155CustomUpgradeable is IERC1155Upgradeable {
    function initialize() external;

    function setURI(string memory newuri) external;

    function mint(
        address account,
        uint256 id,
        uint256 amount
    ) external;

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) external;
}
