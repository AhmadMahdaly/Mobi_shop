import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class QtyResults extends StatelessWidget {
  const QtyResults(this.qtyResults, {super.key});
  final int qtyResults;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 15.17.h),
        child: Text(
          '$qtyResults Results',
          style: TextStyle(
            color: kBigHeaderTitleColor,
            fontSize: 11.70.sp,
            fontWeight: FontWeight.w400,
            height: 1.30.h,
          ),
        ),
      ),
    );
  }
}
