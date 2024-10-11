![Screenshot 2024-10-11 164954](https://github.com/user-attachments/assets/df12182d-ecbc-4dde-8569-b50a80bb46a3)
![Screenshot 2024-10-11 164851](https://github.com/user-attachments/assets/437b30d3-9020-4104-b89a-f48c560a6ffc)

# Tokenized Coupons Smart Contract

## Vision

The Tokenized Coupons project aims to create a decentralized platform where businesses can issue tokenized discount coupons and customers can redeem them seamlessly. By leveraging blockchain technology, this project provides an immutable and transparent way for businesses to distribute coupons and for customers to access and redeem discounts, improving trust and efficiency in coupon management.

## Features

- **Issue Coupon**: Businesses can issue new discount coupons, specifying a unique coupon code and discount amount.
- **Redeem Coupon**: Customers can redeem issued coupons by providing the correct coupon code. The contract verifies the validity of the coupon and ensures it has not been redeemed before.
- **Immutable Coupon Record**: Coupons are recorded immutably on the blockchain, ensuring that they cannot be tampered with.

## Contract Address

- **Network**: Aptos Mainnet/Testnet
- **Contract Address**: `0xd4eaf4194d84c9852a1a020534426f749c44e52d6c187f2ec9bba0fd4950880b`

## How It Works

1. **Issue Coupon**:

   - Businesses call the `issue_coupon` function to create a new discount coupon.
   - The function takes the coupon code, discount amount, and stores this information along with the business address.

2. **Redeem Coupon**:
   - Customers call the `redeem_coupon` function to redeem the coupon.
   - The contract ensures that the coupon code matches, and the coupon has not already been redeemed.
   - Once verified, the coupon is marked as redeemed, and the discount can be applied accordingly.

## Future Scope

- **On-Chain Discount Application**: Implement functionality to automatically apply the discount to purchases made on-chain when redeeming a coupon.
- **Expiration Date for Coupons**: Add an expiration date for each coupon, ensuring that discounts are only available for a limited time.
- **Coupon Transferability**: Enable the transfer of coupons between customers, creating a marketplace for tokenized coupons.
- **Multi-Use Coupons**: Allow businesses to create multi-use coupons with a limited number of uses, encouraging more customer engagement.
- **QR Code Integration**: Provide QR codes for each coupon that can be scanned for quick and easy redemption at physical stores.
- **Loyalty and Reward Integration**: Combine the coupon system with loyalty programs to reward frequent customers with additional discounts or exclusive offers.
- **Business Analytics**: Add business analytics to track coupon issuance, redemptions, and usage patterns, providing insights into marketing effectiveness.

## Getting Started

- Clone this repository and install the necessary dependencies for the Aptos blockchain.
- Deploy the contract using your preferred deployment tool.
- Once deployed, businesses can issue coupons, and customers can redeem them through the smart contract functions.

## Contributing

We welcome contributions! If you have suggestions for improving the Tokenized Coupons platform or want to add new features, feel free to open an issue or submit a pull request.

---

Feel free to modify and expand the README as your project evolves and new features are added!
