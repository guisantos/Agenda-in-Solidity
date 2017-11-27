pragma solidity ^0.4.15;

contract SimpleAgenda {

    event AddNewContact(string name, bytes32 number, string email, uint index);
    event DeleteContact(bytes32 number, uint index);
    
    struct Contact {
        string name;
        bytes32 number;
        string email;
        uint index;
    }

    bytes32[] private contactIndex;
    
    mapping(bytes32 => Contact) private mapping_number;
    
    function newContact (string _name, bytes32 _number, string _email) public returns (bool) {
        if (!contactExist(_number)) {
            var contato = Contact(_name, _number, _email, contactIndex.length);
        
            mapping_number[_number] = contato;
            contactIndex.push(_number);
        
            AddNewContact(_name, _number, _email, contactIndex.length);
        } else {
            revert();
        }
        
    }
    
    function getContact (bytes32 _number) public view returns (string, string) {
        if (contactExist(_number)) {
            var contato = mapping_number[_number];
        
            return (contato.name, contato.email);
        } else {
            revert();
        }
    } 
    
    function deleteContact (bytes32 _number) public {
        if (contactExist(_number)) {
            uint contactToDelete = mapping_number[_number].index;
            
            DeleteContact(_number, contactToDelete);
            
            var contactToMove = contactIndex[contactIndex.length - 1];
            
            contactIndex[contactToDelete] = contactToMove;
            
            mapping_number[contactToMove].index = contactToDelete;
            
            contactIndex.length --;
        } else {
            revert();
        }
    }
    
    function contactExist (bytes32 _number) public view returns (bool isContact) {
        if (contactIndex.length == 0) 
            return false;

        if (keccak256(contactIndex[mapping_number[_number].index]) == keccak256(_number)) {
            return true;
        } else {
            return false;
        }
    }
    
    function countContacts() public view returns (uint) {
        return contactIndex.length;
    }
    
    function getNumberAtIndex(uint index) public view returns (bytes32) {
        return contactIndex[index];
    }
}