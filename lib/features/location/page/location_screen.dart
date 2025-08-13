import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/main_button.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/components/form_fields.dart';
import 'package:nectar_app/features/home/page/home_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.location),
              SizedBox(height: 40),
              Text(
                'Select Your Location',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkC,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Switch on your location to stay in tune with what\'s happening in your area',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyC,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 160),
              FormFields(label: 'Address'),
              SizedBox(height: 80),
              MainButton(
                text: 'Confirm Location',
                onPressed: () {
                  pushReplacementTo(context, HomeScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
