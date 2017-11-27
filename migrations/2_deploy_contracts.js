var simpleAgenda = artifacts.require("./SimpleAgenda.sol");

module.exports = function(deployer) {
  deployer.deploy(simpleAgenda);
};
