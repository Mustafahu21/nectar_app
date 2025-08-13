import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class FormFields extends StatelessWidget {
  const FormFields({
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
        label: Text(
          label,
          style: TextStyle(
            color: AppColors.greyC,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
