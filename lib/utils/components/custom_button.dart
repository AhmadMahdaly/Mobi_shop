import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.onTap,
    super.key,
    this.padding = 0,
  });

  final String text;
  final void Function()? onTap;
  final int padding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: padding.w,
          vertical: padding.h,
        ),
        alignment: Alignment.center,
        width: double.infinity,
        height: 56.h,
        decoration: ShapeDecoration(
          color: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
