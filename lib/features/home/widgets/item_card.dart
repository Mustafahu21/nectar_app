import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class ItemCard<T> extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.items,
    required this.getName,
    required this.getQuantity,
    required this.getPrice,
    required this.getImage,
  });

  final List<T> items;
  final String Function(T) getName;
  final String Function(T) getQuantity;
  final double Function(T) getPrice;
  final String Function(T) getImage;

  @override
  State<ItemCard<T>> createState() => _ItemCardState<T>();
}

class _ItemCardState<T> extends State<ItemCard<T>> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = widget.items[index];
          return Container(
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
                      children: [Image.asset(widget.getImage(item))],
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
                            widget.getName(item),
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
                        '${widget.getQuantity(item)}, Priceg',
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
                          '\$${widget.getPrice(item)}',
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
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 15);
        },
        itemCount: widget.items.length,
      ),
    );
  }
}
