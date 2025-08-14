import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/cart/model/cart_model.dart';

class CartList extends StatefulWidget {
  const CartList({super.key, required this.items, required this.onChanged});

  final List<CartModel> items;
  final VoidCallback onChanged;

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  late double pricetemp;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = widget.items[index];
        // Replace with your cart item widget
        return SizedBox(
          height: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(item.image)),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              //
                            });
                            widget.onChanged();
                          },
                          icon: Icon(Icons.close, color: AppColors.greyC),
                        ),
                      ],
                    ),
                    // SizedBox(height: 5),
                    Text(
                      item.quantity,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                    // SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (item.counter > 0) {
                                    item.counter--;
                                  }
                                });
                                widget.onChanged();
                              },
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                                side: BorderSide(
                                  color: const Color.fromARGB(
                                    75,
                                    124,
                                    124,
                                    124,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              mini: true,
                              child: Icon(Icons.remove, color: AppColors.greyC),
                            ),
                            SizedBox(width: 5),
                            Text(
                              item.counter.toString(),
                              style: TextStyle(
                                color: AppColors.darkC,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 5),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  item.counter++;
                                });
                                widget.onChanged();
                              },
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                                side: BorderSide(
                                  color: const Color.fromARGB(
                                    75,
                                    124,
                                    124,
                                    124,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              mini: true,
                              child: Icon(Icons.add, color: AppColors.greyC),
                            ),
                          ],
                        ),
                        Text(
                          '\$${(item.price * item.counter).toStringAsFixed(2)}',
                          style: TextStyle(
                            color: AppColors.darkC,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         setState(() {
              //           widget.items.removeAt(index);
              //         });
              //       },
              //       icon: Icon(Icons.delete, color: AppColors.greyC),
              //     ),
              //     Text(
              //       '\$${item.price}',
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w600,
              //         color: AppColors.darkC,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: widget.items.length,
    );
  }
}
