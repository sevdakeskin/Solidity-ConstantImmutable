// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract ConstantImmutables {
    /*
      Constants değiştirilemezler,are not modified.
      Constants variables, conctract(blockchainde) storageda yer kaplamıyorlar.

      Immutable değişkenler değiştirilemezler.// fixed

      sabit değişkenler coding convention uppercase olarak yazılır.
    */
    address public constant MYADDRESS = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    uint public constant MYNUMBER = 1234;

    // bir fonksiyon yazıyoruz.myNumber sayısını 456 ile değiştirin.

    /*
    You can not update a constant variable
    function update() public view returns(uint){
        return myNumber = 12345;
    }
    */
    //Değiştirilemez.

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;
    uint256 public totalSupply;
     
    // conctractı deploy  ederken bir kere çalışacak bir özel fonksiyon.
    constructor(uint _myUint, uint256 _totalSupply){
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
        totalSupply =_totalSupply;
    }
}