// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
 /**
   * @title MyT
   * @dev ContractDescriptionryder
   * @custom:dev-run-script file_path
   */

import "@openzeppelin/contracts@4.8.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.1/access/Ownable.sol";

contract MyTokenx is ERC721, Ownable {
    constructor() ERC721("MyTokenx", "MTKx") {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}

