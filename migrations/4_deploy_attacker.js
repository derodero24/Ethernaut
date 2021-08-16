const Attacker = artifacts.require("Attacker4");

module.exports = function (deployer) {
    deployer.deploy(Attacker);
};
