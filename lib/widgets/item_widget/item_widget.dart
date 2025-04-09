import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/models/item_model.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/add_button_product_to_cart.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/badge_special_offer.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/item_comment.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/product_image.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/product_price.dart';
import 'package:mobi_shop/widgets/item_widget/widgets/product_title.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ItemModel(
      title: 'Oppo Smartphone A78\nDual SIM 4G...',
      price: 789,
      image: 'assets/images/product 1.png',
      comment: 'Only 1 left!',
    );
    return Container(
      width: 185.w,
      height: 330.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kScaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: kBorderColor),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BadgeSpecialOffer(),
              const H(h: 5),
              ProductImage(item: item),
              const H(h: 5),
              ProductPrice(item: item),
              const H(h: 10),
              ProductTitle(item: item),
              const H(h: 10),
              ItemComment(item: item),
            ],
          ),
          Positioned(
            right: -5.w,
            bottom: 90.h,
            child: const AddButtonProductToCart(),
          ),
        ],
      ),
    );
  }
}
