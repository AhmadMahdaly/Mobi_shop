import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_search_app_bar.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const CustomSearchAppBar(), toolbarHeight: 100.h),
    );
  }
}
