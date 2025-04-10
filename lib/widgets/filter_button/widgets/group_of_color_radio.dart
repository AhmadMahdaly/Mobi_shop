import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class GroupOfColorRadio extends StatelessWidget {
  const GroupOfColorRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'colors',
            style: TextStyle(
              color: kMainColor,
              fontSize: 16.sp,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
              height: 1.50.h,
            ),
          ),
          Row(
            children: [
              Radio(
                value: 'Black',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Black',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Blue',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Blue',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Purple',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Purple',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'White',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'White',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Pink',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Pink',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'Green',
                onChanged: (value) {},
                groupValue: 'colors',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Green',
                style: TextStyle(
                  color: kDarkTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.71.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
