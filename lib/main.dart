import 'package:flutter/material.dart';
import 'package:shop_app_1/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: CategoriesScreen(),
    );
  }
}
