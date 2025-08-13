import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/auth/pages/register_page.dart';
import 'package:nectar_app/features/auth/widgets/auth_header.dart';
import 'package:nectar_app/components/form_fields.dart';
import 'package:nectar_app/features/location/page/location_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  AuthHeader(
                    text1: 'Login',
                    text2: 'Enter your email and password',
                  ),
                  SizedBox(height: 40),
                  FormFields(
                    label: 'Email',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  FormFields(
                    label: 'Password',
                    obscureText: obscureText,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your password';
                      } else if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: obscureText
                          ? SvgPicture.asset(AppAssets.passwordEye)
                          : Icon(Icons.visibility, color: Colors.red),
                    ),
                  ),
                  SizedBox(height: 20),
                  forgotPassword(),
                  SizedBox(height: 30),
                  MainButton(
                    text: 'Log In',
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        pushTo(context, const LocationScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  signUp(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  RichText signUp(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account? ',
        style: TextStyle(
          color: AppColors.darkC,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: AppColors.primaryC,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                pushReplacementTo(context, const RegisterScreen());
              },
          ),
        ],
      ),
    );
  }

  Align forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // Handle login action
        },
        child: Text(
          'forgot password ?',
          style: TextStyle(
            color: AppColors.darkC,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
