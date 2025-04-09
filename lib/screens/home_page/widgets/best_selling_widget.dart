import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/widgets/item_widget/item_widget.dart';

class BestSellingWidget extends StatelessWidget {
  const BestSellingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7.sp,
        mainAxisSpacing: 9.h,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => const ItemWidget(),
        childCount: 2,
        semanticIndexOffset: 16,
      ),
    );
  }
}
