import 'package:flutter/material.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      pushReplacementTo(context, const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryC,
      body: Center(
        child: SvgPicture.asset(AppAssets.logo, width: 267, height: 68),
      ),
    );
  }
}
