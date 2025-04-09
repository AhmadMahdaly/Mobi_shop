import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: kScaffoldBackgroundColor,
        border: Border.all(color: kBorderColor),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          bottomLeft: Radius.circular(20.r),
        ),
      ),
      child: Row(
        spacing: 8.w,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Filter',
            style: TextStyle(
              color: kMainColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              height: 1.h,
            ),
          ),
          SvgPicture.asset('assets/svg/filter.svg', height: 24.h),
        ],
      ),
    );
  }
}
