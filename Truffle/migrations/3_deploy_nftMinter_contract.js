const { deployProxy } = require("@openzeppelin/truffle-upgrades");
const ERC1155CustomUpgradeableV1 = artifacts.require(
  "ERC1155CustomUpgradeableV1"
);
const NFTMinterUpgradeableV1 = artifacts.require("NFTMinterUpgradeableV1");

module.exports = async (deployer) => {
  const erc1155Instance = await ERC1155CustomUpgradeableV1.deployed();
  const instance = await deployProxy(
    NFTMinterUpgradeableV1,
    [erc1155Instance.address],
    {
      deployer,
      kind: "uups",
    }
  );
  console.log("Deployed", instance.address);
};
