import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_routes.dart';
import 'package:food_delivery_app/utils/app_theme.dart';
import 'package:food_delivery_app/views/pages/custom_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: AppTheme.lightTheme,
      routes: routes(),
      home: const CustomBottomNavbar(),
      
    );
  }
}
