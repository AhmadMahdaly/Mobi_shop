import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class BadgeSpecialOffer extends StatelessWidget {
  const BadgeSpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 110.h),
      child: Container(
        width: double.infinity,
        height: 18.h,
        padding: EdgeInsets.only(
          top: 3.h,
          left: 10.w,
          right: 10.w,
          bottom: 5.h,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFFDF9F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(2.r),
              bottomLeft: Radius.circular(2.r),
              bottomRight: Radius.circular(12.r),
            ),
          ),
        ),

        child: Text(
          'Special Offer',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kOrangeColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            height: 1.h,
          ),
        ),
      ),
    );
  }
}
