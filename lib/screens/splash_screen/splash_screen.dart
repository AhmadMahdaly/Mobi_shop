import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';
import 'package:mobi_shop/widgets/navigation_bar/navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AppNavigationBar()),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/cart logo.svg',
              width: 165.w,
              height: 196.h,
            ),
            const H(h: 20),
            Text(
              'Mobi Shop',
              style: TextStyle(
                color: kMainColor,
                fontSize: 40.sp,
                fontWeight: FontWeight.w800,
                height: 1.20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
