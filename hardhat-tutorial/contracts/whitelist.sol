//SPDX-License-Identifier: MIT
pragma  solidity ^0.8.0;
//contract deployed to address " 0x1bb665CC91b7fC0714f1bf15dBA14A8B0A128769"
contract  whitelist {
    

    //max no of whitelisted addresses allowed
    uint8 public maxwhitelistedAddresses;

    //mapping of whitelisted add false by default setable to true
    mapping(address => bool) public whitelistedAddresses;

    //no of addresses whitelisted to help keep track
        uint8 public numAddressesWhitelisted;

    //setting the max value of whitelisted addresses, user will input the value at deployment 

    constructor(uint8 _maxWhitelistedAddresses) {
        maxwhitelistedAddresses = _maxWhitelistedAddresses;
    }
    //function to add address of sender to whitelist
    function addAddressToWhitelist() public {
        //check if already whitelisted
        require(!whitelistedAddresses[msg.sender], "sender has already been whitelisted");
        
        //check if num > max throw err
        require(numAddressesWhitelisted < maxwhitelistedAddresses, "more addressed cannot be added, limit reached");

        //add the address to the whitelisted array 
        whitelistedAddresses[msg.sender] = true; 

        //increase the no of white listed addrs
        numAddressesWhitelisted += 1;

    }
        
    

}

