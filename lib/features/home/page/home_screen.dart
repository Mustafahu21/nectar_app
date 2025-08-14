import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/search_fields.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/home/model/home_model.dart';
import 'package:nectar_app/features/home/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          width: 200,
          height: 60,
          AppAssets.logo,
          colorFilter: ColorFilter.mode(AppColors.primaryC, BlendMode.srcIn),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // logoHeader(),
              SearchFields(label: 'Search Store'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkC,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryC,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ItemCard<ProductsModel>(
                items: productsList,
                getName: (item) => item.name,
                getQuantity: (item) => item.quantity,
                getPrice: (item) => item.price,
                getImage: (item) => item.image,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkC,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryC,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ItemCard<BestSelling>(
                items: bestSellingList,
                getName: (item) => item.name,
                getQuantity: (item) => item.quantity,
                getPrice: (item) => item.price,
                getImage: (item) => item.image,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row logoHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppAssets.logo,
          height: 56,
          colorFilter: ColorFilter.mode(AppColors.primaryC, BlendMode.srcIn),
        ),
      ],
    );
  }
}
