import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/cart_page/cart_page.dart';
import 'package:mobi_shop/utils/components/space.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        InkWell(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              ),
          child: SvgPicture.asset(
            'assets/svg/cart outlight.svg',
            width: 24.w,
            fit: BoxFit.none,
          ),
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
