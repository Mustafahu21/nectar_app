import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class CategoryCard<T> extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.items,
    required this.getName,
    required this.getImage,
    required this.getColor,
    required this.getBorderColor,
  });

  final List<T> items;
  final String Function(T) getName;
  final String Function(T) getImage;
  final Color Function(T) getColor;
  final Color Function(T) getBorderColor;

  @override
  State<CategoryCard<T>> createState() => _CategoryCardState<T>();
}

class _CategoryCardState<T> extends State<CategoryCard<T>> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 190,
      ),
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        var item = widget.items[index];
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: 175,
            height: 190,
            decoration: BoxDecoration(
              color: widget.getColor(item),
              border: Border.all(color: widget.getBorderColor(item), width: 1),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset(widget.getImage(item))],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.getName(item),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: AppColors.darkC,
                          ),
                        ),
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
