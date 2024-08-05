const KycNFT = artifacts.require("./KycNFT.sol");

module.exports = function (deployer) {
  deployer.deploy(KycNFT);
};
