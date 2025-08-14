import 'package:nectar_app/core/Constants/assets_names.dart';

class CartModel {
  final String name;
  final String quantity;
  final double price;
  final String image;
  int counter = 1;

  CartModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });
}

List<CartModel> cartlist = [
  CartModel(
    name: 'Organic Moz',
    quantity: '1kg',
    price: 4.99,
    image: AppAssets.moz,
  ),
  CartModel(
    name: 'Felfel',
    quantity: '1kg',
    price: 5.99,
    image: AppAssets.felfel,
  ),
  CartModel(
    name: 'Ginger',
    quantity: '250g',
    price: 8.0,
    image: AppAssets.msh3aref,
  ),
  CartModel(
    name: 'Egg Chicken Red',
    quantity: '4pcs',
    price: 20.0,
    image: AppAssets.beed,
  ),
];
