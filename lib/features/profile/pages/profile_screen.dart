import 'package:flutter/material.dart';
import 'package:nectar_app/core/extensions/navigators.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/auth/pages/login_screen.dart';
import 'package:nectar_app/features/profile/model/profile_model.dart';
import 'package:nectar_app/features/profile/widgets/profile_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              photoNinfo(),
              Divider(),
              ProfileList(items: profileList),
              Divider(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color.fromARGB(255, 242, 243, 242),
                    ),
                    minimumSize: WidgetStateProperty.all<Size>(Size(370, 70)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  onPressed: () {
                    pushReplacementTo(context, LoginScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.logout,
                            color: AppColors.primaryC,
                            size: 30,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Log out',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryC,
                            ),
                          ),
                        ],
                      ),
                      Column(children: [SizedBox(width: 35)]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row photoNinfo() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(35.0, 30.0, 10.0, 30.0),
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://static.wikia.nocookie.net/inconsistently-admirable/images/d/df/Dr._Greg_House.png/revision/latest?cb=20230125203412',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dr. Gregory House',
                  style: TextStyle(
                    color: AppColors.darkC,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle edit action
                  },
                  icon: Icon(
                    Icons.mode_edit_outline_outlined,
                    color: AppColors.primaryC,
                  ),
                  // SvgPicture.asset(
                  //   AppAssets.pen,
                  //   colorFilter: ColorFilter.mode(
                  //     AppColors.primaryC,
                  //     BlendMode.srcIn,
                  //   ),
                  // ),
                ),
              ],
            ),
            Text(
              'House@gmail.com',
              style: TextStyle(fontSize: 16, color: AppColors.greyC),
            ),
          ],
        ),
      ],
    );
  }
}
