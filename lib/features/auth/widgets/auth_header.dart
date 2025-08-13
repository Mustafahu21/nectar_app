import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset(AppAssets.carroticon)],
          ),
        ),
        SizedBox(height: 100),
        Text(
          text1,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: AppColors.darkC,
          ),
        ),
        SizedBox(height: 15),
        Text(
          text2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.greyC,
          ),
        ),
      ],
    );
  }
}
