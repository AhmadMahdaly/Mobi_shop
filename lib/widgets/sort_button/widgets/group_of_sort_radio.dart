import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class GroupOfSortRadio extends StatelessWidget {
  const GroupOfSortRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 'Price (Low to High)',
                onChanged: (value) {},
                groupValue: 'ram',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Price (Low to High)',
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
                value: 'Price (High to Low)',
                onChanged: (value) {},
                groupValue: 'ram',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Text(
                'Price (High to Low)',
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
