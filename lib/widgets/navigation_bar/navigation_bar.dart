import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/cart_page/cart_page.dart';
import 'package:mobi_shop/screens/explore_page/explore_page.dart';
import 'package:mobi_shop/screens/home_page/home_page.dart';
import 'package:mobi_shop/screens/profile_page/profile_page.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';
import 'package:mobi_shop/widgets/navigation_bar/widgets/select_icon_style.dart';
import 'package:mobi_shop/widgets/navigation_bar/widgets/tab_item_name.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const ProfilePage(),
  ];
  List<String> selectedIcon = [
    'assets/svg/nav-home.svg',
    'assets/svg/nav-explore.svg',
    'assets/svg/nav-shopping-cart.svg',
    'assets/svg/nav-profile.svg',
  ];
  List<String> unselectedIcon = [
    'assets/svg/home.svg',
    'assets/svg/explore.svg',
    'assets/svg/shopping-cart.svg',
    'assets/svg/profile.svg',
  ];
  List<String> itemName = ['Home', 'Explore', 'Cart', 'Profile'];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        backgroundColor: kScaffoldBackgroundColor,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: kMainColor,
        unselectedItemColor: kTextColor,
        selectedLabelStyle: const TextStyle(
          /// To control height of Nav.bar
          fontSize: 0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: kTextColor,

          /// To control height of Nav.bar
          fontSize: 0,
          fontWeight: FontWeight.w400,
        ),
        elevation: 1,
        iconSize: 24.sp,
        type: BottomNavigationBarType.fixed,
        items: [
          /// Home button
          BottomNavigationBarItem(
            icon:
                _currentIndex == 0
                    ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: kUnselectedIconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                      child: Row(
                        spacing: 1.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectIconStyle(selectedIcon[0]),
                          TabItemName(title: itemName[0]),
                        ],
                      ),
                    )
                    : UnSelectIconStyle(unselectedIcon[0]),
            label: '',
          ),

          /// Wishlist button
          BottomNavigationBarItem(
            icon:
                _currentIndex == 1
                    ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: kUnselectedIconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                      child: Row(
                        spacing: 1.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectIconStyle(selectedIcon[1]),
                          TabItemName(title: itemName[1]),
                        ],
                      ),
                    )
                    : UnSelectIconStyle(unselectedIcon[1]),
            label: '',
          ),

          /// Cart botton
          BottomNavigationBarItem(
            icon:
                _currentIndex == 2
                    ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: kUnselectedIconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                      child: Row(
                        spacing: 1.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectIconStyle(selectedIcon[2]),
                          TabItemName(title: itemName[2]),
                        ],
                      ),
                    )
                    : UnSelectIconStyle(unselectedIcon[2]),

            label: '',
          ),

          /// Profile botton
          BottomNavigationBarItem(
            icon:
                _currentIndex == 3
                    ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: kUnselectedIconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                      ),
                      child: Row(
                        spacing: 1.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectIconStyle(selectedIcon[3]),
                          TabItemName(title: itemName[3]),
                        ],
                      ),
                    )
                    : UnSelectIconStyle(unselectedIcon[3]),
            label: '',
          ),
        ],
      ),
    );
  }
}
