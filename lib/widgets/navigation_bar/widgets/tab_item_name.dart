import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class TabItemName extends StatelessWidget {
  const TabItemName({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kMainColor,
        fontSize: 12.sp,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w600,
        height: 1.25.h,
        letterSpacing: 0.24.w,
      ),
    );
  }
}
