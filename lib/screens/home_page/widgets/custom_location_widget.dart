import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomLocationWidget extends StatelessWidget {
  const CustomLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/location.svg',
            width: 24.w,
            fit: BoxFit.none,
          ),
          W(w: 16.w),
          Text(
            'Deliver to: ',
            style: TextStyle(
              color: kMainColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              height: 1.h,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 15.h),
            child: Text(
              overflow: TextOverflow.ellipsis,
              'Elshorouk, Cairo',
              style: TextStyle(
                color: kMainColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                height: 1.h,
              ),
            ),
          ),
          const Spacer(),
          Text(
            'Change',
            style: TextStyle(
              color: kMainColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              height: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
