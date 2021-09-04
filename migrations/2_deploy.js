const Attacker = artifacts.require("Attacker11");

module.exports = function (deployer) {
  deployer.deploy(Attacker);
};
