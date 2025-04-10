import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/item_page/item_page.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ItemOfCart extends StatelessWidget {
  const ItemOfCart({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemPage()),
          ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        height: 110.h,
        decoration: ShapeDecoration(
          color: kScaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50.w, color: kBorderColor),
            borderRadius: BorderRadius.circular(8.r),
          ),
          shadows: const [
            BoxShadow(
              color: kBorderColor,
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/product 1.png',
              height: 55.h,
              width: 55.w,
            ),
            Column(
              spacing: 8.h,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 183,
                  child: Text(
                    'Redmi Xiaomi 12 8GB RAM, 128GB ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.23.h,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '6700',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        height: 2.h,
                      ),
                    ),
                    W(w: 2.w),
                    Column(
                      children: [
                        Text(
                          '.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.h,
                          ),
                        ),
                        Text(
                          'EGP',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 85.w,
                  height: 28.h,
                  decoration: ShapeDecoration(
                    color: kMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(77.78),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '-',
                        style: TextStyle(
                          color: kScaffoldBackgroundColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.h,
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: kScaffoldBackgroundColor,
                          fontSize: 10.89.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '+',
                        style: TextStyle(
                          color: kScaffoldBackgroundColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
