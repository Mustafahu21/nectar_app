import 'package:flutter/material.dart';
import 'package:nectar_app/components/search_fields.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/explore/model/category_model.dart';
import 'package:nectar_app/features/explore/widget/category_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Find Products',
          style: TextStyle(
            color: AppColors.darkC,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SearchFields(label: 'Search Store'),
              const SizedBox(height: 20),
              CategoryCard(
                items: categories,
                getName: (item) => item.name,
                getImage: (item) => item.imageUrl,
                getColor: (item) => item.color,
                getBorderColor: (item) => item.borderColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
