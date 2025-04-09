import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/models/item_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({required this.item, super.key});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        item.image,
        width: 156.w,
        height: 156.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
