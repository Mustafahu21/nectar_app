import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/auth/widgets/auth_header.dart';
import 'package:nectar_app/components/form_fields.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';
import 'package:nectar_app/features/location/page/location_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    text1: 'Sign Up',
                    text2: 'Enter your credentials to continue',
                  ),
                  SizedBox(height: 40),
                  FormFields(
                    label: 'Username',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
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
                    obscureText: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your password';
                      } else if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  termsNpolicy(),
                  SizedBox(height: 30),
                  MainButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        pushTo(context, const LocationScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  b2Login(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  RichText b2Login(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: TextStyle(
          color: AppColors.darkC,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyle(
              color: AppColors.primaryC,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                pushReplacementTo(context, LoginScreen());
              },
          ),
        ],
      ),
    );
  }

  RichText termsNpolicy() {
    return RichText(
      text: TextSpan(
        text: 'By continuing you agree to our ',
        style: TextStyle(
          color: AppColors.greyC,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: 'Terms of Service ',
            style: TextStyle(
              color: AppColors.primaryC,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //
              },
          ),
          TextSpan(
            text: 'and ',
            style: TextStyle(
              color: AppColors.greyC,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy. ',
            style: TextStyle(
              color: AppColors.primaryC,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //
              },
          ),
        ],
      ),
    );
  }
}
