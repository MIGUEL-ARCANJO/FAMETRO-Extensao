import 'package:flutter/material.dart';
import 'package:inclusao_digital/screens/categories_screen.dart';
import 'package:inclusao_digital/screens/content_item_screen.dart';
import 'package:inclusao_digital/screens/short_cut_details.dart';
import 'package:inclusao_digital/utils/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inclusão Digital',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        AppRoutes.CONTENT_DETAILS: (_) => ContentItem(),
        AppRoutes.SHORT_CUT_DETAILS: (_) => ShortCutDetailsScreen()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoriesScreen(),
      bottomSheet: Image.asset(
        'assets/images/fametro.png',
        height: 35,
      ),
    );
  }
}
