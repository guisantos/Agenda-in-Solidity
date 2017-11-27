var simpleAgenda = artifacts.require("./SimpleAgenda.sol");

contract(simpleAgenda, function(contacts){

    it('Possible to add a new contact?', function(){
        var contractInstance;
        return simpleAgenda.deployed().then(function(instance) {
            contractInstance = instance;
            return contractInstance.newContact("Guilherme", "1234", "gui@123.com");
        });
    });

    it('Possible to remove a contact?', function() {
        var contractInstance;
        return simpleAgenda.deployed().then(function(instance) {
            contractInstance = instance;
            contractInstance.newContact("Guilherme", "4321", "gui@123.com");
            return contractInstance.deleteContact("4321");
        });
    });

    it('Possible to count the contacts?', function() {
        var contractInstance;
        return simpleAgenda.deployed().then(function(instance) {
            contractInstance = instance;
            contractInstance.newContact("Guilherme", "9999", "gui@123.com");
            contractInstance.newContact("Guilherme", "1111", "gui@123.com");
            return contractInstance.countContacts();
        });
    });

    it('Possible to get a number by his index?', function() {
        var contractInstance;
        return simpleAgenda.deployed().then(function(instance) {
            contractInstance = instance;
            return contractInstance.getNumberAtIndex(1);
        });
    });

    it('Possible to get a contact by his number?', function() {
        var contractInstance;
        return simpleAgenda.deployed().then(function(instance) {
            contractInstance = instance;
            return contractInstance.getContact("1111");
        });
    });
})