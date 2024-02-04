import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/pages/account_page.dart';
import 'package:food_delivery_app/views/pages/product_details_page.dart';


Map<String, WidgetBuilder> routes() {
  return {
    ProductDetailsPage.routeName: (_) => const ProductDetailsPage(),
    AccountPage.routeName: (_) => const AccountPage(),
  };
}
