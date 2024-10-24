// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld{
    string strVal = "Hello world";

    //结构体（class）
    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    Info[] infos;

    mapping(uint256 id=> Info info) infoMapping;

    function sayHellow(uint256 _id)public view returns(string memory){
        if(!(infoMapping[_id].addr==address(0x0))){
            return addInfo(infoMapping[_id].phrase);
        }else{
            return  addInfo(strVal);
        }
    }

    function setHelloWorld(string memory newString,uint256 _id)public {
        Info memory info = Info(newString, _id, msg.sender);

        infoMapping[_id] = info;
    }

    function addInfo(string memory hellworldString) internal pure returns (string memory) {
        return string.concat(hellworldString,"from herbert's contract");
    }

} 