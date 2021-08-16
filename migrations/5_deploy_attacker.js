const Attacker = artifacts.require("Attacker5");

module.exports = function (deployer) {
    deployer.deploy(Attacker);
};
