import 'package:nectar_app/core/Constants/assets_names.dart';

class BeverageModel {
  final String image;
  final String title;
  final String quantity;
  final int counter = 1;
  final double price;
  final String description;

  BeverageModel({
    required this.image,
    required this.title,
    required this.quantity,
    required this.price,
    required this.description,
  });
}

List<BeverageModel> favouritesItems = [
  BeverageModel(
    image: AppAssets.sprite,
    title: 'Sprite Can',
    quantity: '330ml, Price',
    price: 15.0,
    description: 'A refreshing lemon-lime soda.',
  ),
  BeverageModel(
    image: AppAssets.cocadiet,
    title: 'Diet Coke',
    quantity: '330ml, Price',
    price: 20.0,
    description: 'A low-calorie cola drink.',
  ),
  BeverageModel(
    image: AppAssets.juice2,
    title: 'Apple Juice',
    quantity: '2L, Price',
    price: 10.0,
    description: 'A delicious apple juice.',
  ),
  BeverageModel(
    image: AppAssets.coca,
    title: 'Coca Cola Can',
    quantity: '330ml, Price',
    price: 5.0,
    description: 'A classic cola drink.',
  ),
  BeverageModel(
    image: AppAssets.pepsi,
    title: 'Pepsi Can',
    quantity: '330ml, Price',
    price: 10.0,
    description: 'A refreshing cola drink.',
  ),
  BeverageModel(
    image: AppAssets.orangejuice,
    title: 'Orange Juice',
    quantity: '2L, Price',
    price: 10.0,
    description: 'A refreshing orange juice.',
  ),
];
