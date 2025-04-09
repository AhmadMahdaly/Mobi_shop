import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 21.h),
      height: 45.h,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 12.50.h,
        right: 16.w,
        left: 16.w,
        bottom: 12.50.h,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(48.r)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search by Mobile Model',
            style: TextStyle(
              color: kTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SvgPicture.asset(
            'assets/svg/search.svg',
            width: 24.w,
            fit: BoxFit.none,
          ),
        ],
      ),
    );
  }
}
