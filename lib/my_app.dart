import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobi_shop/screens/splash_screen/splash_screen.dart';
import 'package:mobi_shop/utils/constants/colors_constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child:
      /// Remove focus from any input element
      GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mobi Shop',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              color: kScaffoldBackgroundColor,
              iconTheme: IconThemeData(color: kMainColor),
            ),
            scaffoldBackgroundColor: kScaffoldBackgroundColor,
            textTheme: Theme.of(
              context,
            ).textTheme.apply(fontFamily: 'Montserrat'),
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
