import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/brand_page/brand_page.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100.h,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/explore.svg',
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            W(w: 8.w),
            Text(
              'Explore Brands',
              style: TextStyle(
                color: kMainColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                height: 1.30.h,
              ),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
        ),
        itemCount: 13,
        itemBuilder:
            (context, index) => InkWell(
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BrandPage(title: 'Samsung'),
                    ),
                  ),
              child: Container(
                width: 163.w,
                height: 214.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xFFDEDEDE)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      width: 105.w,
                      height: 135.h,
                      'assets/images/product 1.png',
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      'Samsung',
                      style: TextStyle(
                        color: Color(0xFF2A5E99),
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      '40 Mobile',
                      style: TextStyle(
                        color: Color(0xFF1B1C1E),
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
