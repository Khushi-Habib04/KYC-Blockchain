// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KycNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;

    constructor() ERC721("KycNFT", "KYC") Ownable(msg.sender) {}

   function mintKycNFT(address to, string memory uri) public returns (uint256) {
       uint256 tokenId = _tokenIdCounter;
       _mint(to, tokenId);
       _setTokenURI(tokenId, uri);
       _tokenIdCounter += 1; // Increment the counter
       return tokenId;
   }
}