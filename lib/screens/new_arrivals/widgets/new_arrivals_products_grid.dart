import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/widgets/item_widget/item_widget.dart';

class NewArrivalsProductsGrid extends StatelessWidget {
  const NewArrivalsProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 300.h,
        mainAxisSpacing: 9.h,
        crossAxisSpacing: 9.w,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => const ItemWidget(),
        childCount: 19,
        semanticIndexOffset: 16,
      ),
    );
  }
}
