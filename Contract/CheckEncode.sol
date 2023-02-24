//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

contract CheckEncode{

     // Get encoded Data
    function getEncode(address _add, uint256 _value) pure public returns(bytes memory){
    return abi.encode(_add, _value);
   }
   
   // Get encodePacked Data
    function getEncodePacked(address _add, uint256 _value) pure public returns(bytes memory){
    return abi.encodePacked(_add, _value);
   }

    // Get Data Payload using encodeWithSignature
    function getEncodeWithSignature(address _add, uint256 _value) pure public returns(bytes memory){
        bytes memory data = abi.encodeWithSignature("transfer(address,uint)",_add,_value);
        return data;
    }
    
     // Get Data Payload using encodeWithSelector
    function getEncodeWithSelector(address _add,uint256 _value) pure public returns(bytes memory){
        bytes4 selector = bytes4(keccak256(bytes("transfer(address,uint)"))); 
        bytes memory data = abi.encodeWithSelector(selector,_add,_value );
        return data;
    }

     // Get Decoded Data
    function decodeData(bytes memory data) pure public returns(address, uint256){
     (address add, uint256  value) = abi.decode(data, (address,uint256));
     return (add,value);
   }
}