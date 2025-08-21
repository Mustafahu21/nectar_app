class CheckoutModel {
  final String text;
  final String? subText;

  CheckoutModel({required this.text, this.subText});
}

List<CheckoutModel> checkoutList = [
  CheckoutModel(text: 'Delivery', subText: 'Select method'),
  CheckoutModel(text: 'Payment', subText: 'payment method'),
  CheckoutModel(text: 'Promo Code', subText: 'Pick Discount'),
  CheckoutModel(text: 'Total Cost', subText: null),
];
