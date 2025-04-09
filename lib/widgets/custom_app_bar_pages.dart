import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomAppBarPages extends StatelessWidget {
  const CustomAppBarPages({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kScaffoldBackgroundColor,
      actions: [
        SvgPicture.asset(
          'assets/svg/cart outlight.svg',
          width: 24.w,
          fit: BoxFit.none,
        ),

        W(w: 12.w),
      ],
      leading: SvgPicture.asset(
        'assets/svg/cart logo s.svg',
        width: 24.w,
        fit: BoxFit.none,
      ),
    );
  }
}
