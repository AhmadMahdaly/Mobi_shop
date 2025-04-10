import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_shop/screens/profile_page/widgets/component_of_profile.dart';
import 'package:mobi_shop/utils/components/space.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class ProfileBodyWithLogin extends StatelessWidget {
  const ProfileBodyWithLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100.h,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/profile.svg',
              colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            W(w: 8.w),
            Text(
              'Your Profile',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            spacing: 12.h,
            children: [
              const ComponentOfProfile(
                iconSvg: 'assets/svg/profile.svg',
                title: 'Personal Info',
              ),
              const ComponentOfProfile(
                iconSvg: 'assets/svg/history.svg',
                title: 'Orders History',
              ),
              ComponentOfProfile(
                iconSvg: 'assets/svg/language.svg',
                title: 'Change Language',
                widget: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Text(
                        'ع',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 14.sp,
                          fontFamily: 'Avenir Arabic',
                          fontWeight: FontWeight.w400,
                          height: 1.h,
                          letterSpacing: 0.14.w,
                        ),
                      ),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: kMainColor,
                      ),
                      Text(
                        'En',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 14.sp,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.h,
                          letterSpacing: 0.14.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const ComponentOfProfile(
                iconSvg: 'assets/svg/adresses.svg',
                title: 'Adresses',
              ),
              const ComponentOfProfile(
                iconSvg: 'assets/svg/live-help-outline.svg',
                title: 'FQA',
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Color(0xFFEA1C25),
                    ),
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: const Color(0xFFEA1C25),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
