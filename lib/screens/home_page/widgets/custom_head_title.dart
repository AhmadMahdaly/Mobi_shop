import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomHeadTitle extends StatelessWidget {
  const CustomHeadTitle({
    required this.title,
    required this.navigator,
    super.key,
  });
  final String title;
  final Widget navigator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kBigHeaderTitleColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              height: 1.56.h,
            ),
          ),
          IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => navigator),
                ),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
