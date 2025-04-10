import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/best%20_selling/widgets/best_selling_products_grid.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_app_bar.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_search_app_bar.dart';
import 'package:mobi_shop/widgets/filter_button/filter_button.dart';
import 'package:mobi_shop/widgets/page_title_widget.dart';
import 'package:mobi_shop/widgets/qty_results_widget.dart';
import 'package:mobi_shop/widgets/sort_button/sort_button.dart';

class BestSellingScreen extends StatelessWidget {
  const BestSellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const CustomScrollView(
              slivers: [
                SliverAppBar(
                  flexibleSpace: CustomHomeAppBar(),
                  automaticallyImplyLeading: false,
                ),
                SliverToBoxAdapter(child: CustomSearchAppBar()),
                SliverToBoxAdapter(child: PageTitle(title: 'Best selling')),
                SliverToBoxAdapter(child: QtyResults(44)),
                BestSellingProductsGrid(),
              ],
            ),
          ),
          Positioned(
            bottom: 32.h, // تحريك العنصر للخروج من الإطار
            left: MediaQuery.of(context).size.width / 2 - 125, // منتصف الشاشة
            child: const Row(children: [FilterButton(), SortButton()]),
          ),
        ],
      ),
    );
  }
}
