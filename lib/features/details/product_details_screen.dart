import 'package:flutter/material.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/category/models/beverage_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({super.key, required this.item});

  final BeverageModel item;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavorite = false;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageCard(context),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  productName(),
                  productQuantity(),
                  SizedBox(height: 25),
                  priceNcounter(),
                  Divider(),
                  SizedBox(height: 5),
                  detailTitle(),
                  SizedBox(height: 20),
                  detailBody(),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 15),
                  nutritions(),
                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 5),
                  review(),
                  SizedBox(height: 10),
                  MainButton(text: 'Add to Basket', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row review() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Review',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Icon(Icons.star, size: 22, color: Colors.amber),
                Icon(Icons.star, size: 22, color: Colors.amber),
                Icon(Icons.star, size: 22, color: Colors.amber),
                Icon(Icons.star, size: 22, color: Colors.amber),
                Icon(Icons.star, size: 22, color: Colors.amber),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 22,
                  color: AppColors.greyC,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Row nutritions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Nutritions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 35,
                  height: 20,
                  decoration: BoxDecoration(
                    color: AppColors.greyC.withAlpha(50),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '1L',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greyC,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 22,
                  color: AppColors.greyC,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Row detailBody() {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.item.description,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ),
      ],
    );
  }

  Row detailTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Product Detail',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.keyboard_arrow_down, size: 35, color: AppColors.greyC),
      ],
    );
  }

  Row priceNcounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (counter > 1) {
                    counter--;
                  }
                });
              },
              elevation: 0,
              backgroundColor: Colors.white,
              mini: true,
              child: Icon(Icons.remove, color: AppColors.greyC),
            ),
            SizedBox(width: 10),
            Text(
              counter.toString(),
              style: TextStyle(
                color: AppColors.darkC,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              elevation: 0,
              backgroundColor: Colors.white,
              mini: true,
              child: Icon(Icons.add, color: AppColors.primaryC),
            ),
          ],
        ),
        Text(
          '\$${(widget.item.price * counter).toStringAsFixed(2)}',
          style: TextStyle(
            color: AppColors.darkC,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row productQuantity() {
    return Row(
      children: [
        Text(
          widget.item.quantity,
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
      ],
    );
  }

  Row productName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.item.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: isFavorite
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border),
        ),
      ],
    );
  }

  Container imageCard(BuildContext context) {
    return Container(
      height: 400,

      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
              ],
            ),
            Expanded(child: Image.asset(widget.item.image, scale: 0.25)),
          ],
        ),
      ),
    );
  }
}
