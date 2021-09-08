const Attacker = artifacts.require("Attacker16");

module.exports = function (deployer) {
  deployer.deploy(Attacker, '0xd3aD19d88aa834dd956d38f80fa1D042ce73AA8b');
};
