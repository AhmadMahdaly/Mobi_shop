import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/utils/components/custom_button.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/product 2.jpg',
                  width: 330.w,
                  height: 329.h,
                ),
              ),
              const H(h: 16),
              SizedBox(
                width: 330.w,
                child: Text(
                  'Redmi Xiaomi 12 8GB RAM, 128GB ',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.h,
                  ),
                ),
              ),
              const H(h: 16),

              Row(
                children: [
                  Text(
                    '6700',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      height: 1.40.h,
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
              const H(h: 10),
              const Divider(color: kBorderColor, thickness: 1.2),
              const H(h: 10),
              Text(
                'About this Mobile ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.14.h,
                ),
              ),
              const H(h: 10),

              SizedBox(
                width: 350,
                child: Text(
                  'Redmi Xiaomi 12 8GB RAM, 128GB ROM 90Hz 6.79” FHD+ display Large 5000mAh (typ) battery 50MP Al triple camera IP53 dust and splash resistant Large 90Hz FHD 1 year local warranty, Midnight Black',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.23.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: const CustomButton(text: 'Add to Cart'),
      ),
    );
  }
}
