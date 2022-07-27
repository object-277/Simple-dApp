pragma solidity >=0.4.22 <0.9.0;

contract Contacts {
    uint256 public count = 0; // state variable

    struct Contact {
        uint256 id;
        string name;
        string phone;
    }

    constructor() public {
        createContact("John Doe", "123123123");
    }

    mapping(uint256 => Contact) public contacts;

    function createContact(string memory _name, string memory _phone) public {
        count++;
        contacts[count] = Contact(count, _name, _phone);
    }
}
