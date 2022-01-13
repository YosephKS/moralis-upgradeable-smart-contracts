// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/interfaces/IERC721Upgradeable.sol";

interface IERC721CustomUpgradeable is IERC721Upgradeable {
    function initialize(string memory _name, string memory _symbol) external;

    function safeMint(address to, uint256 tokenId) external;
}
