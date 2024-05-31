import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:sushi/pages/credits_and_support_page.dart';
import 'package:sushi/pages/settings_page.dart';
import 'pages/intro_page.dart';
import 'pages/categories_page.dart';
import 'package:sushi/pages/logic_page.dart';
import 'package:sushi/pages/historical_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => IntroPage(),
        '/categoriespage': (context) => CategoriesPage(),
        '/settings': (context) => Settings(),
        '/creditsandsupport': (context) => CreditsAndSupport(),
        '/logicpage': (context) => LogicPage(),
        '/historicalpage': (context) => HistoricalPage(),
      },
    );
  }
}
