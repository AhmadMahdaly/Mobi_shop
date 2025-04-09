import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomHeadTitle extends StatelessWidget {
  const CustomHeadTitle({required this.title, this.onPressed, super.key});
  final void Function()? onPressed;
  final String title;
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}
