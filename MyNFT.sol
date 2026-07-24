// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 private _tokenIds;

    constructor() ERC721("SagarNFT", "SNFT") Ownable(msg.sender) {}

    function mintNFT(address recipient) public onlyOwner returns (uint256) {
        _tokenIds++;
        uint256 newItemId = _tokenIds;
        _safeMint(recipient, newItemId);
        return newItemId;
    }
}
