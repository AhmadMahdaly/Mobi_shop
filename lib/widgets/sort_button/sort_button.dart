import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';
import 'package:mobi_shop/widgets/sort_button/widgets/custom_sort_show_modal_bottom_sheet.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => showModalBottomSheet<void>(
            clipBehavior: Clip.antiAlias,
            useSafeArea: true,
            backgroundColor: kScaffoldBackgroundColor,
            context: context,
            builder: (context) => const CustomSortShowModalBottomSheet(),
          ),
      child: Container(
        width: 125.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: kScaffoldBackgroundColor,
          border: Border.all(color: kBorderColor),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Row(
          spacing: 8.w,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sort',
              style: TextStyle(
                color: kMainColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                height: 1.h,
              ),
            ),
            SvgPicture.asset('assets/svg/sort.svg', height: 24.h),
          ],
        ),
      ),
    );
  }
}
