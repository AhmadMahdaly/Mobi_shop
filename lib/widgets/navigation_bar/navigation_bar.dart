import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/home_page/home_page.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';
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
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  List<String> selectedIcon = [
    'assets/icons/home.png',
    'assets/icons/heart.png',
    'assets/icons/shopping-cart.png',
    'assets/icons/profile.png',
  ];
  List<String> unselectedIcon = [
    'assets/icons/home_outline.png',
    'assets/svg/heart.svg',
    'assets/svg/shopping-cart.svg',
    'assets/svg/profile.svg',
  ];
  List<String> itemName = ['Home', 'Wishlist', 'Cart', 'Profile'];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            selectedIcon[0],
                            width: 26.w,
                            height: 26.h,
                          ),
                          TabItemName(title: itemName[0]),
                        ],
                      ),
                    )
                    : Image.asset(
                      unselectedIcon[0],
                      width: 24.w,
                      height: 24.h,
                      color: kTextColor,
                    ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            selectedIcon[1],
                            width: 26.w,
                            height: 26.h,
                          ),
                          TabItemName(title: itemName[1]),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      unselectedIcon[1],
                      width: 24.sp,
                      colorFilter: const ColorFilter.mode(
                        kTextColor,
                        BlendMode.srcIn,
                      ),
                    ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            selectedIcon[2],
                            width: 26.w,
                            height: 26.h,
                          ),
                          TabItemName(title: itemName[2]),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      unselectedIcon[2],
                      width: 24.sp,
                      colorFilter: const ColorFilter.mode(
                        kTextColor,
                        BlendMode.srcIn,
                      ),
                    ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            selectedIcon[3],
                            width: 26.w,
                            height: 26.h,
                          ),
                          TabItemName(title: itemName[3]),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      unselectedIcon[3],
                      width: 24.sp,
                      colorFilter: const ColorFilter.mode(
                        kTextColor,
                        BlendMode.srcIn,
                      ),
                    ),
            label: '',
          ),
        ],
      ),
    );
  }
}
