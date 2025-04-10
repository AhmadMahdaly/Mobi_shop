import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/components/custom_button.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.all(16.sp),
            height: 180.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: kBorderColor),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 6.sp,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.30.h,
                      ),
                    ),
                    Text(
                      '1/1',
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
                const H(h: 10),
                Image.asset(
                  'assets/images/product 1.png',
                  height: 50.h,
                  width: 50.w,
                ),
                const Divider(color: kBorderColor, thickness: 0.5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 18.20.h),
                      child: Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '6700',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
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
              ],
            ),
          ),
          const H(h: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.all(16.sp),
            height: 90.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: kBorderColor),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.place_outlined, color: kMainColor),
                W(w: 12.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery to',
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w900,
                        height: 1.30.h,
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 18.20.h),
                      child: Text(
                        'Elshorouk, Cairo',
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 366.w, maxHeight: 20.80.h),
              child: Text(
                'Payment Method',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.30.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Row(
              spacing: 8.w,
              children: [
                Radio(
                  value: 'Debit Card',
                  onChanged: (value) {},
                  groupValue: 'payment',
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                SvgPicture.asset('assets/svg/wallet.svg', width: 22.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 18.20.h),
                      child: Text(
                        'Debit Card',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: Text(
                        'Click "Place Order" to proceed with the payment',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Row(
              spacing: 8.w,
              children: [
                Radio(
                  value: 'Cash',
                  onChanged: (value) {},
                  groupValue: 'payment',
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                SvgPicture.asset('assets/svg/money.svg', width: 30.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 18.20.h),
                      child: Text(
                        'Cash on delivery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: Text(
                        'No additional fee',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.30.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
        child: const CustomButton(text: 'Payment'),
      ),
    );
  }
}
