const path = require("path");

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    develop: {
      port: 7545
    }
  },
  compilers: {
    solc: {
      version: "0.8.20",
      settings: { evmVersion: 'london' }, // Specify the compiler version
    },
  },
  
};
