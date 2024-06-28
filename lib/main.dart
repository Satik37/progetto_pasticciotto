import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/credits_and_support_page.dart';
import 'pages/settings_page.dart';
import 'pages/historical_page.dart';
import 'pages/intro_page.dart';
import 'pages/categories_page.dart';
import 'pages/logic_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Set the design size of your app
      minTextAdapt:
          true, // Ensures that the text size is adapted to the screen size
      splitScreenMode: true, // Supports split-screen mode
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Progetto Pasticciotto',
          home: const IntroPage(),
          routes: {
            '/intropage': (context) => const IntroPage(),
            '/categoriespage': (context) => const CategoriesPage(),
            '/settings': (context) => const Settings(),
            '/creditsandsupport': (context) => const CreditsAndSupport(),
            '/logicpage': (context) => const LogicPage(),
            '/historicalpage': (context) => const HistoricalPage(),
          },
          builder: (context, widget) {
            // Initialize ScreenUtil
            ScreenUtil.init(context);
            return widget!;
          },
        );
      },
    );
  }
}
