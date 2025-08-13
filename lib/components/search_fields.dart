import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class SearchFields extends StatelessWidget {
  const SearchFields({
    super.key,
    required this.label,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  final String label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Color(0xFFF2F3F2),
        filled: true,
        hintText: label,
        hintStyle: TextStyle(
          color: AppColors.greyC,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: IconButton(
          icon: SvgPicture.asset(
            AppAssets.search,
            colorFilter: ColorFilter.mode(AppColors.darkC, BlendMode.srcIn),
            fit: BoxFit.scaleDown,
          ),
          onPressed: () {},
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
