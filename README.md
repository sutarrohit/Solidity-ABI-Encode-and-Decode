# Solidity functions to Encode and Decode data payload.


## 1. abi.encode

* abi.encode is a Solidity function that is used to encode function calls and other data structures using the Application Binary Interface (ABI) encoding.</br>
* The ABI encoding is a standardized way of encoding data structures and function calls for communication between different systems and programming languages, such as between a Solidity smart contract and a web3 library like ethers.js. </br>
* The ABI encoding ensures that the data is encoded in a consistent and machine-readable format.</br>
* abi.encode takes the input parameters of a function or a data structure as arguments and returns a byte array that represents the encoded data.

### Here's an example:

```sol

 function getEncode(address _add, uint256 _value) pure public returns(bytes memory){
    return abi.encode(_add, _value);
   }
```   

* In this example, the getEncode function takes a address and a uint256 as input parameters, and returns the encoded data as a byte array. </br>
* The abi.encode function is used to encode the input parameters _add and _value. </br></br>


## 2. abi.encodePacked

* abi.encodePacked is a Solidity function that is used to concatenate and tightly pack multiple values of different types into a single byte array.</br>
* The abi.encodePacked function takes the values to be packed as input parameters and returns a byte array that represents the tightly packed data.</br>

### Here's an example:

```sol

function getEncodePacked(address _add, uint256 _value) pure public returns(bytes memory){
    return abi.encodePacked(_add, _value);
    }
```    

* In this example, the getEncodePacked function takes a address, and an uint256 as input parameters, and returns the packed data as a byte array.</br>
* The abi.encodePacked function is used to concatenate and pack the input parameters into a tightly packed byte array.</br></br>

## 3. abi.encodeWithSelector

* abi.encodeWithSelector is a Solidity function that is used to encode function calls with a function selector.</br>
* When you want to call a function in Solidity, you need to know the function's selector, which is a hash of the function's name and its input parameter types.</br>
* The selector is used to identify the function on the blockchain and to ensure that the function is called with the correct input parameters.</br>
* abi.encodeWithSelector takes the function selector and the function's input parameters as arguments, and returns a byte array that represents the encoded function call.

### Here's an example:

```sol

 function getEncodeWithSelector(address _add,uint256 _value) pure public returns(bytes memory){
        bytes4 selector = bytes4(keccak256(bytes("transfer(address,uint)"))); 
        bytes memory data = abi.encodeWithSelector(selector,_add,_value );
        return data;
    }
```    
   
* In this example, the getEncodeWithSelector function takes a address and a uint256 as input parameters, and returns the encoded data as a byte array. </br>
* The function selector is computed using the keccak256 hash function and the bytes4 type, and is used in the abi.encodeWithSelector function call along with the input parameters.</br>

* The encoded data can then be sent to the Ethereum blockchain as a transaction, or can be used to make a call to a smart contract's function using a web3 library like ethers.js.</br>
* When the encoded data is received by the contract, it can be decoded using abi.decode to extract the function name and the input parameters.</br></br>


## 4. abi.encodeWithSignature

* abi.encodeWithSignature is a Solidity function that is used to encode function calls with a function signature.</br>
* When you want to call a function in Solidity, you need to know the function's signature, which is a hash of the function's name and its input parameter types. </br>
* The signature is used to identify the function on the blockchain and to ensure that the function is called with the correct input parameters.</br>
* abi.encodeWithSignature takes the function signature and the function's input parameters as arguments, and returns a byte array that represents the encoded function call.

### Here's an example:

```sol

    function getEncodeWithSignature(address _add, uint256 _value) pure public returns(bytes memory){
        bytes memory data = abi.encodeWithSignature("transfer(address,uint)",_add,_value);
        return data;
    }
```   

* In this example, the getEncodeWithSignature function takes a address and a uint256 as input parameters, and returns the encoded data as a byte array. </br>
* The abi.encodeWithSignature function is used to encode the function call with the signature "transfer(address,uint)" and the input parameters _add and _value.</br>

* The encoded data can then be sent to the Ethereum blockchain as a transaction, or can be used to make a call to a smart contract's function using a library like ethers.js.</br> 
* When the encoded data is received by the contract, it can be decoded using abi.decode to extract the function name and the input parameters.</br></br>


## 5. abi.decode

* abi.decode is a Solidity function that is used to decode data that has been encoded using the Application Binary Interface (ABI) encoding.</br>
* The ABI encoding is a standardized way of encoding data structures and function calls for communication between different systems and programming languages, such as between a Solidity smart contract and a web3 library like web3.js. The ABI encoding ensures that the data is encoded in a consistent and machine-readable format.</br>
* abi.decode takes a byte array as input, along with the expected types of the decoded values, and returns the decoded data.

### Here's an example:

```sol

 function decodeData(bytes memory data) pure public returns(address, uint256){
     (address add, uint256  value) = abi.decode(data, (address,uint256));
     return (add,value);
   }
```   
  
* In this example, the decodeData function takes the encoded data as input, and decodes it into a address and a uint256. 
* The abi.decode function is used to decode the input data, and the expected types of the decoded values are passed as a tuple in the second argument.
* The decoded values can then be used in the smart contract code, or can be returned to the calling function or application.

