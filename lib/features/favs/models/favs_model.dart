import 'package:nectar_app/core/Constants/assets_names.dart';

class FavouritesModel {
  final String image;
  final String title;
  final String quantity;
  final int counter = 1;
  final double price;

  FavouritesModel({
    required this.image,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

List<FavouritesModel> favouritesItems = [
  FavouritesModel(
    image: AppAssets.sprite,
    title: 'Sprite Can',
    quantity: '330ml, Price',
    price: 15.0,
  ),
  FavouritesModel(
    image: AppAssets.cocadiet,
    title: 'Diet Coke',
    quantity: '330ml, Price',
    price: 20.0,
  ),
  FavouritesModel(
    image: AppAssets.juice2,
    title: 'Apple Juice',
    quantity: '2L, Price',
    price: 10.0,
  ),
  FavouritesModel(
    image: AppAssets.coca,
    title: 'Coca Cola Can',
    quantity: '330ml, Price',
    price: 5.0,
  ),
  FavouritesModel(
    image: AppAssets.pepsi,
    title: 'Pepsi Can',
    quantity: '330ml, Price',
    price: 10.0,
  ),
];
