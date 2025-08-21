import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/cart/model/checkout_model.dart';

class CheckoutList extends StatelessWidget {
  const CheckoutList({
    super.key,
    required this.items,
    required this.totalPrice,
  });

  final List<CheckoutModel> items;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22.0, 5, 22.0, 0),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10, 0.0, 5),
            child: SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            item.text,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greyC,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              item.subText ??
                                  '\$${totalPrice.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkC,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.navigate_next,
                              color: AppColors.darkC,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: items.length,
      ),
    );
  }
}
