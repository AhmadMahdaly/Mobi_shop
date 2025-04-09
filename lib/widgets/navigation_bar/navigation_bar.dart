import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/home_page/home_page.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

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
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: kMainColor,
        unselectedItemColor: kTextColor,
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: kTextColor,
          fontSize: 10.sp,
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
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE4E8F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/home.png',
                            width: 26.w,
                            height: 26.h,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: 12.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.25.h,
                              letterSpacing: 0.24.w,
                            ),
                          ),
                        ],
                      ),
                    )
                    : Image.asset(
                      'assets/icons/home_outline.png',
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
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE4E8F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/heart.png',
                            width: 26.w,
                            height: 26.h,
                          ),
                          Text(
                            'Wishlist',
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: 12.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.25.h,
                              letterSpacing: 0.24.w,
                            ),
                          ),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      'assets/svg/heart.svg',
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
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE4E8F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/shopping-cart.png',
                            width: 26.w,
                            height: 26.h,
                          ),
                          Text(
                            'Cart',
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: 12.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.25.h,
                              letterSpacing: 0.24.w,
                            ),
                          ),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      'assets/svg/cart outlight.svg',
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
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE4E8F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/profile.png',
                            width: 26.w,
                            height: 26.h,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: 12.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              height: 1.25.h,
                              letterSpacing: 0.24.w,
                            ),
                          ),
                        ],
                      ),
                    )
                    : SvgPicture.asset(
                      'assets/svg/profile.svg',
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
