const { upgradeProxy } = require("@openzeppelin/truffle-upgrades");
const ERC1155CustomUpgradeableV1 = artifacts.require(
  "ERC1155CustomUpgradeableV1"
);
const ERC1155CustomUpgradeableV2 = artifacts.require(
  "ERC1155CustomUpgradeableV2"
);

module.exports = async (deployer) => {
  const existing = await ERC1155CustomUpgradeableV1.deployed();
  const instance = await upgradeProxy(
    existing.address,
    ERC1155CustomUpgradeableV2,
    {
      deployer,
      kind: "uups",
    }
  );
  console.log("Deployed", instance.address);
};
