import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class AddButtonProductToCart extends StatelessWidget {
  const AddButtonProductToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: CircleAvatar(
        backgroundColor: kMainColor,
        radius: 17,
        child: SvgPicture.asset('assets/svg/add.svg'),
      ),
    );
  }
}
