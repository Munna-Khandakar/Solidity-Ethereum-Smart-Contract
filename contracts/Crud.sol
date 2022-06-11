pragma solidity ^0.5.0;

contract Crud {
    struct User {
        uint256 id;
        string name;
    }

    uint256 public nextId = 1;
    User[] public users;

    function create(string memory _name) public {
        users.push(User(nextId, _name));
        nextId++;
    }

    // function realALl() view public returns(User[] memory){
    //     return users;
    // }
    function read(uint256 _id) public view returns (uint256, string memory) {
        uint256 i = find(_id);
        return (users[i].id, users[i].name);
        // for(uint i = 0;i<users.length;i++){
        //     if(users[i].id == _id){

        //     }
        // }
    }

    function update(uint256 _id, string memory _name) public {
        uint256 i = find(_id);
        users[i].name = _name;
    }

    function destroy(uint256 _id) public {
        uint256 i = find(_id);
        delete users[i];
    }

    // utils
    function find(uint256 _id) internal view returns (uint256) {
        for (uint256 i = 0; i < users.length; i++) {
            if (users[i].id == _id) {
                return i;
            }
        }
        revert("OOPS..!User doesn't exits");
    }
}
