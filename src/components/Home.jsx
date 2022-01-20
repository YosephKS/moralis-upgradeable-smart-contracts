import React from "react";
import { Card, Typography, Button } from "antd";
import { useMoralis, useWeb3Contract } from "react-moralis";
import { abi } from "../contracts/ERC1155CustomUpgradeableV1.json";

export default function QuickStart() {
  const { account } = useMoralis();
  const { runContractFunction, isLoading } = useWeb3Contract({
    functionName: "mint",
    abi,
    contractAddress: "0xc44a27657627A89D522F98c04C9Fa820484Af46A",
    params: {
      account,
      id: 0,
      amount: 1,
    },
  });

  return (
    <div style={{ display: "flex" }}>
      <Card
        bordered={false}
        style={{
          width: 600,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          textAlign: "center",
        }}
      >
        <Typography.Title level={3}>NFT Minter</Typography.Title>
        <img
          src="https://ipfs.moralis.io:2053/ipfs/QmebxzVBtcEznrZgSUxorrdL8Q1XEbiyRaGxHUuwWUoF1o/images/0.png"
          alt="Test"
          style={{ marginBottom: "2rem" }}
        />
        <Button
          type="primary"
          shape="round"
          size="large"
          style={{ width: "100%" }}
          loading={isLoading}
          onClick={() => runContractFunction()}
        >
          MINT
        </Button>
      </Card>
    </div>
  );
}
