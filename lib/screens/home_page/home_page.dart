import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/best%20_selling/best_selling_screen.dart';
import 'package:mobi_shop/screens/home_page/widgets/best_selling_widget.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_app_bar.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_head_title.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_home_banner.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_location_widget.dart';
import 'package:mobi_shop/screens/home_page/widgets/custom_search_app_bar.dart';
import 'package:mobi_shop/screens/home_page/widgets/new_arrivals_widget.dart';
import 'package:mobi_shop/screens/new_arrivals/new_arrivals_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: const CustomScrollView(
          slivers: [
            SliverAppBar(flexibleSpace: CustomHomeAppBar()),
            SliverToBoxAdapter(child: CustomSearchAppBar()),
            SliverToBoxAdapter(child: CustomLocationWidget()),
            SliverToBoxAdapter(child: CustomHomeBanner()),
            SliverToBoxAdapter(
              child: CustomHeadTitle(
                title: 'New arrivals',
                navigator: NewArrivalsScreen(),
              ),
            ),
            NewArrivalsWidget(),
            SliverToBoxAdapter(
              child: CustomHeadTitle(
                title: 'Best selling',
                navigator: BestSellingScreen(),
              ),
            ),
            BestSellingWidget(),
          ],
        ),
      ),
    );
  }
}
