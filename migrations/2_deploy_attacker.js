const Attacker = artifacts.require("Attacker3");

module.exports = function (deployer) {
    deployer.deploy(Attacker);
};
