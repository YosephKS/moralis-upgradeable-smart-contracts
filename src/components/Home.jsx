import React from "react";
import { Card, Typography, Button } from "antd";
// import { useMoralis } from "react-moralis";

export default function QuickStart() {
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
        <img src="" alt="Test" />
        <Button
          type="primary"
          shape="round"
          size="large"
          style={{ width: "100%" }}
        >
          MINT
        </Button>
      </Card>
    </div>
  );
}
