const { deployProxy } = require("@openzeppelin/truffle-upgrades");
const ERC721CustomUpgradeable = artifacts.require("ERC721CustomUpgradeable");

module.exports = async (deployer) => {
  const instance = await deployProxy(
    ERC721CustomUpgradeable,
    ["My Token", "MTK"],
    {
      deployer,
      kind: "uups",
    }
  );
  console.log("Deployed", instance.address);
};
