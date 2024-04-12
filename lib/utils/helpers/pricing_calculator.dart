sealed class AppPricingCalculator {
  static double calculateDiscountedPrice(
    double originalPrice,
    double discount,
  ) {
    return originalPrice - (originalPrice * (discount / 100));
  }

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);

    return productPrice + taxAmount + shippingCost;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }

  // -- Sum all cart values and return total.
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(
  //         0,
  //         (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0),
  //       );
  // }
}
