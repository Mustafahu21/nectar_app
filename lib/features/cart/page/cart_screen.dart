import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/cart/model/cart_model.dart';
import 'package:nectar_app/features/cart/model/checkout_model.dart';
import 'package:nectar_app/features/cart/widget/cart_list.dart';
import 'package:nectar_app/features/cart/widget/checkout_list.dart';
import 'package:nectar_app/features/thanks/placed_order.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double get totalPrice {
    return cartlist.fold(0, (sum, item) => sum + item.price * item.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 15),
                Divider(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: CartList(
                    items: cartlist,
                    onChanged: () => setState(() {}),
                  ),
                ),
                Divider(),
                SizedBox(height: 50),
              ],
            ),
            Positioned(
              top: 620,
              left: 25,
              right: 25,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    AppColors.primaryC,
                  ),
                  minimumSize: WidgetStateProperty.all<Size>(Size(370, 70)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: AppColors.primaryC),
                    ),
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        // padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Checkout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: const Color.fromARGB(180, 226, 226, 226),
                              height: 10,
                            ),
                            CheckoutList(
                              items: checkoutList,
                              totalPrice: totalPrice,
                            ),
                            termsNpolicy(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                20.0,
                                8.0,
                                20.0,
                                8.0,
                              ),
                              child: MainButton(
                                text: 'Place Order',
                                onPressed: () {
                                  pushReplacementTo(
                                    context,
                                    PlacedOrderScreen(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [SizedBox(width: 40)]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Go To Checkout',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 72, 158, 103),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '\$${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  termsNpolicy() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: RichText(
        text: TextSpan(
          text: 'By placing an order you agree to our ',
          style: TextStyle(
            color: AppColors.greyC,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: 'Terms ',
              style: TextStyle(
                color: AppColors.darkC,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //
                },
            ),
            TextSpan(
              text: 'and ',
              style: TextStyle(
                color: AppColors.greyC,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'Condintions. ',
              style: TextStyle(
                color: AppColors.darkC,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //
                },
            ),
          ],
        ),
      ),
    );
  }
}
