import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 67,
    this.width,
    this.bgcolor,
  });

  final String text;
  final Function() onPressed;
  final double? height;
  final double? width;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 67,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor ?? AppColors.primaryC,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
