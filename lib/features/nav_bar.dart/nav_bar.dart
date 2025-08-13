import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/Constants/assets_names.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/explore/page/explore_page.dart';
import 'package:nectar_app/features/home/page/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  List<Widget> screens = [HomeScreen(), ExplorePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyC.withValues(alpha: 0.12),
              spreadRadius: 2,
              blurRadius: 20,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppAssets.shop,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryC,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                AppAssets.shop,
                colorFilter: ColorFilter.mode(AppColors.greyC, BlendMode.srcIn),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppAssets.explore,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryC,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                AppAssets.explore,
                colorFilter: ColorFilter.mode(AppColors.greyC, BlendMode.srcIn),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppAssets.cart,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryC,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                AppAssets.cart,
                colorFilter: ColorFilter.mode(AppColors.greyC, BlendMode.srcIn),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppAssets.favourite,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryC,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                AppAssets.favourite,
                colorFilter: ColorFilter.mode(AppColors.greyC, BlendMode.srcIn),
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryC,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter: ColorFilter.mode(AppColors.greyC, BlendMode.srcIn),
              ),
              label: 'Profile',
            ),
          ],
          selectedItemColor: AppColors.primaryC,
          unselectedItemColor: AppColors.greyC,
        ),
      ),
    );
  }
}
