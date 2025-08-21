import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.welcomePic, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 85,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.carroticon,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 30),
                MainButton(
                  text: 'Get Started',
                  onPressed: () {
                    pushReplacementTo(context, LoginScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
