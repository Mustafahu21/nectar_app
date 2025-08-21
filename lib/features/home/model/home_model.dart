import 'package:nectar_app/core/Constants/assets_names.dart';

class ProductsModel {
  final String name;
  final String quantity;
  final double price;
  final String image;

  ProductsModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });
}

List<ProductsModel> productsList = [
  ProductsModel(
    name: 'Apple',
    quantity: '1kg',
    price: 4.99,
    image: AppAssets.tofa7,
  ),
  ProductsModel(
    name: 'Banana',
    quantity: '1kg',
    price: 4.99,
    image: AppAssets.moz,
  ),
];

class BestSelling {
  final String name;
  final String quantity;
  final double price;
  final String image;

  BestSelling({
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });
}

List<BestSelling> bestSellingList = [
  BestSelling(
    name: 'Pepper',
    quantity: '1kg',
    price: 5.99,
    image: AppAssets.felfel,
  ),
  BestSelling(
    name: 'Ginger',
    quantity: '250g',
    price: 8.0,
    image: AppAssets.msh3aref,
  ),
  BestSelling(
    name: 'Egg Chicken Red',
    quantity: '4pcs',
    price: 20.0,
    image: AppAssets.beed,
  ),
];
