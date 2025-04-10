import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class PriceFilterWidget extends StatelessWidget {
  const PriceFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Price',
            style: TextStyle(
              color: kMainColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              height: 1.50.h,
            ),
          ),
          Text(
            'Your budget',
            style: TextStyle(
              color: kDarkTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              height: 1.71.h,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EGP 450',
                style: TextStyle(
                  color: kDarkColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 2.h,
                ),
              ),
              Text(
                'EGP 5000',
                style: TextStyle(
                  color: kDarkColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 2.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
