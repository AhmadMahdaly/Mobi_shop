import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class GroupOfMemoryRadio extends StatelessWidget {
  const GroupOfMemoryRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Memory',
            style: TextStyle(
              color: kMainColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              height: 1.50.h,
            ),
          ),
          Row(
            children: [
              Radio(
                value: '256GB 12GB RAM',
                onChanged: (value) {},
                groupValue: 'ram',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                '256GB 12GB RAM',
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
                value: '512GB 12GB RAM',
                onChanged: (value) {},
                groupValue: 'ram',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                '512GB 12GB RAM',
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
