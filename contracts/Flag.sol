// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Flag is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Flag", "CTF") {}

    function safeMint(address to) public onlyOwner {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _safeMint(to, newTokenId);
    }
}