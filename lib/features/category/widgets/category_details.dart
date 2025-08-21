import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/category/models/beverage_model.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/features/details/product_details_screen.dart';

class CategoryDetails extends StatelessWidget {
  CategoryDetails({super.key});
  final List<BeverageModel> items = favouritesItems;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 250,
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];
        return GestureDetector(
          onTap: () {
            pushTo(context, ProductDetailsScreen(item: item));
          },
          child: Container(
            width: 180,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFE2E2E2), width: 1),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: item.title,
                          child: Image.asset(item.image, scale: 0.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: AppColors.darkC,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '${item.quantity}, Price',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkC,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment:
                    //     MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '\$${item.price}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primaryC,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: AppColors.primaryC,
                        mini: true,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
