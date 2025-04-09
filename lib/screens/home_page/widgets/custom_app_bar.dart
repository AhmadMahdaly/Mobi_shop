import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/space.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        SvgPicture.asset(
          'assets/svg/cart outlight.svg',
          width: 24.w,
          fit: BoxFit.none,
        ),
        W(w: 12.w),
      ],
      leading: SvgPicture.asset(
        'assets/svg/cart.svg',
        width: 24.w,
        fit: BoxFit.none,
      ),
    );
  }
}
