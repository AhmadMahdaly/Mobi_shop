import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/models/item_model.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ItemComment extends StatelessWidget {
  const ItemComment({required this.item, super.key});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 155.w),
        child: Text(
          item.comment,
          style: TextStyle(
            color: kOrangeColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1.33.h,
          ),
        ),
      ),
    );
  }
}
