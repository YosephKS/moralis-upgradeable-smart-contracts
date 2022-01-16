const { upgradeProxy } = require("@openzeppelin/truffle-upgrades");
const NFTMinterUpgradeableV1 = artifacts.require("NFTMinterUpgradeableV1");
const NFTMinterUpgradeableV2 = artifacts.require("NFTMinterUpgradeableV2");

module.exports = async (deployer) => {
  const existing = await NFTMinterUpgradeableV1.deployed();
  const instance = await upgradeProxy(
    existing.address,
    NFTMinterUpgradeableV2,
    {
      deployer,
      kind: "uups",
    }
  );
  console.log("Deployed", instance.address);
};
