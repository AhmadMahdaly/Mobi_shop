import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeBanner extends StatelessWidget {
  const CustomHomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.r),
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: 140.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Image.asset('assets/images/banner.png', fit: BoxFit.cover),
    );
  }
}
