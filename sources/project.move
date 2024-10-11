module MyModule::TokenizedCoupons {

    use aptos_framework::signer;
    use std::vector;

    /// Struct representing a coupon.
    struct Coupon has store, key {
        business: address,       // Address of the business issuing the coupon
        coupon_code: vector<u8>, // Unique code for the coupon
        discount_amount: u64,    // Discount amount in tokens
        is_redeemed: bool,       // Whether the coupon has been redeemed
    }

    /// Function for a business to issue a new coupon.
    public fun issue_coupon(business: &signer, coupon_code: vector<u8>, discount_amount: u64) {
        let coupon = Coupon {
            business: signer::address_of(business),
            coupon_code,
            discount_amount,
            is_redeemed: false,
        };
        move_to(business, coupon);
    }

    /// Function for a customer to redeem a coupon.
    public fun redeem_coupon(business_address: address, coupon_code: vector<u8>, redeemer: &signer) acquires Coupon {
        let coupon = borrow_global_mut<Coupon>(business_address);

        // Ensure the coupon code matches and the coupon has not already been redeemed
        assert!(coupon.coupon_code == coupon_code, 1);
        assert!(!coupon.is_redeemed, 2);

        // Mark the coupon as redeemed
        coupon.is_redeemed = true;

        // Redemption logic: The discount can be applied here (e.g., reducing cost or issuing a reward)
    }
}
