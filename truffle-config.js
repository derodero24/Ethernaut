const HDWalletProvider = require("@truffle/hdwallet-provider");
const mnemonic = process.env.MNEMONIC;
const infura_id = process.env.INFURA_ID;

module.exports = {

  networks: {
    rinkeby: {
      provider: function () {
        return new HDWalletProvider(
          mnemonic,
          "https://rinkeby.infura.io/v3/" + infura_id
        );
      },
      network_id: 4,
      gas: 6721445,
      gasPrice: 200000000000 // default:20000000000
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
