import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/brand_page/widgets/brand_products_page.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_search_app_bar.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: kMainColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            height: 1.56.h,
          ),
        ),
        bottom: const CustomSearchAppBar(),
      ),
      body: const BrandProductsWidget(),
    );
  }
}
