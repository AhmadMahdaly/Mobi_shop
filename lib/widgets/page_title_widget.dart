import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 31.20.h),
        child: Text(
          title,
          style: TextStyle(
            color: kBigHeaderTitleColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
            height: 1.30.h,
          ),
        ),
      ),
    );
  }
}
