// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/utils/Counters.sol";


contract Punnet is ERC721URIStorage{
    
    struct Bean{
        bool allele1;
        bool allele2;
    }
    
    function _breed(Bean memory b1, Bean memory b2, uint8 squareNum) internal returns (Bean memory){
        require(squareNum < 5, "choose a sqaure, 1 2 3 or 4");
        
        if(squareNum == 1){ return Bean(b1.allele1, b2.allele1);}
        if(squareNum == 2){ return Bean(b1.allele2, b2.allele1);}
        if(squareNum == 3){ return Bean(b1.allele1, b2.allele2);}
        if(squareNum == 4){ return Bean(b1.allele2, b2.allele2);}
    }
    
     constructor() ERC721("Punnet Experiment", "BEAN") {
    }
}


