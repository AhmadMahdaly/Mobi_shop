import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/search_bar/search_bar_page.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextField(
        onTap:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchBarPage()),
            ),
        readOnly: true,
        cursorColor: kMainColor,

        decoration: InputDecoration(
          hintText: 'Search by Mobile Model',

          hintStyle: TextStyle(
            color: kTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),

          suffixIcon: Container(
            margin: EdgeInsets.all(8.sp),
            padding: EdgeInsets.all(5.sp),
            width: 32.sp,
            height: 32.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: SvgPicture.asset(
              'assets/svg/search.svg',
              width: 24.w,
              fit: BoxFit.none,
              // colorFilter: const ColorFilter.mode(
              //   Color(0xFF213555),
              //   BlendMode.srcIn,
              // ),
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          contentPadding: EdgeInsets.only(
            top: 12.50.h,
            right: 16.w,
            left: 16.w,
            bottom: 12.50.h,
          ),
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFF4F4F4)),
      borderRadius: BorderRadius.circular(48.r),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
