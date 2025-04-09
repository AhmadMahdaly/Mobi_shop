import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/widgets/item_widget/item_widget.dart';

class NewArrivalsWidget extends StatelessWidget {
  const NewArrivalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330.h,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6.sp,
          mainAxisSpacing: 9.h,
          crossAxisSpacing: 18.w,
        ),
        itemBuilder: (context, index) => const ItemWidget(),
        itemCount: 2,
      ),
    );
  }
}
