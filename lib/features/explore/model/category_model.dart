import 'package:flutter/material.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';

class CategoryModel {
  final String name;
  final String imageUrl;
  final Color color;
  final Color borderColor;

  CategoryModel({
    required this.name,
    required this.imageUrl,
    required this.color,
    required this.borderColor,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    name: 'Fresh Fruits & Vegetables',
    imageUrl: AppAssets.fwakeh_5odar,
    color: Color.fromARGB(63, 83, 177, 117),
    borderColor: Color.fromARGB(255, 83, 177, 117),
  ),
  CategoryModel(
    name: 'Cooking Oil & Ghee',
    imageUrl: AppAssets.zyot,
    color: Color.fromARGB(60, 248, 164, 76),
    borderColor: Color.fromARGB(255, 248, 164, 76),
  ),
  CategoryModel(
    name: 'Meat & Fish',
    imageUrl: AppAssets.la7ma,
    color: Color.fromARGB(60, 247, 165, 147),
    borderColor: Color.fromARGB(255, 247, 165, 147),
  ),
  CategoryModel(
    name: 'Bakery & Snacks',
    imageUrl: AppAssets.bakery,
    color: Color.fromARGB(60, 211, 176, 224),
    borderColor: Color.fromARGB(255, 211, 176, 224),
  ),
  CategoryModel(
    name: 'Dairy & Eggs',
    imageUrl: AppAssets.dairy,
    color: Color.fromARGB(60, 253, 229, 152),
    borderColor: Color.fromARGB(255, 253, 229, 152),
  ),
  CategoryModel(
    name: 'Beverages',
    imageUrl: AppAssets.groceries,
    color: Color.fromARGB(60, 183, 223, 245),
    borderColor: Color.fromARGB(255, 183, 223, 245),
  ),
  CategoryModel(
    name: 'Spices & Condiments',
    imageUrl: AppAssets.felfel,
    color: Color.fromARGB(60, 131, 106, 246),
    borderColor: Color.fromARGB(255, 131, 106, 246),
  ),
  CategoryModel(
    name: 'Herbs & Seasonings',
    imageUrl: AppAssets.msh3aref,
    color: Color.fromARGB(60, 215, 59, 119),
    borderColor: Color.fromARGB(255, 215, 59, 119),
  ),
];
