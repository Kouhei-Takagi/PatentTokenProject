// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract PatentToken is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    struct Patent {
        string title;
        string patentNumber;
        string patentHolder;
        string dateGranted;
    }

    mapping(uint256 => Patent) public patents;

    constructor() ERC721("PatentToken", "PT") {}

    function mintPatent(
        address to,
        string memory title,
        string memory patentNumber,
        string memory patentHolder,
        string memory dateGranted
    ) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(to, newItemId);

        patents[newItemId] = Patent(title, patentNumber, patentHolder, dateGranted);

        return newItemId;
    }

    function getPatentDetails(uint256 tokenId) public view returns (Patent memory) {
        return patents[tokenId];
    }
}
