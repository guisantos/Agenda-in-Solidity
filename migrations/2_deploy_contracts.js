var cvDapp = artifacts.require("./CVDapp.sol");

module.exports = function(deployer) {
  deployer.deploy(cvDapp);
};
