pragma solidity ^0.5.0;

contract SimpleStorage {
    // data is a storage which is stored in each block
    string public data;

    // this set function required gas/cost as it creates transection
    // assigning a new value is a kind of transection in blockchain
    // it is called as transection
    function set(string memory _data) public {
        data = _data;
    }

    // it is almost similiar to public function.
    //public function returns the hard coded data
    // it is called as call
    // view -> it's a readonly function
    function get() public view returns (string memory) {
        return data;
    }
}
