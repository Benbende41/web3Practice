// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {HelloWorld} from "./test.sol";

contract HelloWorldFactory {
    HelloWorld hw;

    HelloWorld[] HWS;
    function createHelloWorld() public {
      hw = new HelloWorld();  
      HWS.push(hw);
    }

    function getHelloWorldByIndex(uint256 _index) public view returns(HelloWorld){
        return HWS[_index];
    } 

    function callSayHelloWorldFromFactory(uint256 _index,uint256 _id) public view returns(string memory) {
       return HWS[_index].sayHellow(_id);
    }

    function callSetHelloWorldFromFactory(uint256 _index, uint256 _id, string memory newStr) public {
        HWS[_index].setHelloWorld(newStr,_id);
    }
}