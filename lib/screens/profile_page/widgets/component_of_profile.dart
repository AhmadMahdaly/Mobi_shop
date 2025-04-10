import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ComponentOfProfile extends StatelessWidget {
  const ComponentOfProfile({
    required this.iconSvg,
    required this.title,
    this.widget,
    super.key,
    this.onPressed,
  });
  final String iconSvg;
  final String title;
  final Widget? widget;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: kBorderColor),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            W(w: 8.w),
            SvgPicture.asset(
              iconSvg,
              colorFilter: const ColorFilter.mode(kMainColor, BlendMode.srcIn),
            ),
            W(w: 8.w),
            Text(
              title,
              style: TextStyle(
                color: kMainColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                height: 1.h,
                letterSpacing: 0.14.w,
              ),
            ),
            const Spacer(),
            if (widget != null) widget!,
          ],
        ),
      ),
    );
  }
}
