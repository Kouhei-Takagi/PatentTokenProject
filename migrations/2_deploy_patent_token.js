const PatentToken = artifacts.require("PatentToken");

module.exports = function (deployer) {
  deployer.deploy(PatentToken);
};
