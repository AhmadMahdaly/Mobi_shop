import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/cart_page/widgets/item_of_cart.dart';
import 'package:mobi_shop/screens/payment_page/payment_page.dart';
import 'package:mobi_shop/utils/components/custom_button.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100.h,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/cart outlight.svg',
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            W(w: 8.w),
            Text(
              'Cart',
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text(
                  'Products in the cart',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.30.h,
                  ),
                ),
                Text(
                  '(1 Item)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.30.h,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => const ItemOfCart(),

              itemCount: 1,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
        child: CustomButton(
          text: 'Checkout',
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PaymentPage()),
              ),
        ),
      ),
    );
  }
}
