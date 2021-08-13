const HDWalletProvider = require("@truffle/hdwallet-provider");
const mnemonic = process.env.MNEMONIC;

module.exports = {

  networks: {
    rinkeby: {
      provider: function () {
        return new HDWalletProvider(
          mnemonic,
          "https://rinkeby.infura.io/v3/14ad3fbac2994ccf959d86cd07dcb807"
        );
      },
      network_id: 4
    }
  },

  compilers: {
    solc: {
      version: "0.8.4",
    }
  },

  mocha: {
    // timeout: 100000
  },

  db: {
    enabled: false
  }
};
