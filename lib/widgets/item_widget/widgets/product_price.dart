import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/models/item_model.dart';
import 'package:mobi_shop/utils/components/space.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({required this.item, super.key});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      child: Row(
        children: [
          Text(
            item.price.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              height: 1.40.h,
            ),
          ),
          W(w: 2.w),
          Column(
            children: [
              Text(
                '.00',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.h,
                ),
              ),
              Text(
                'EGP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
