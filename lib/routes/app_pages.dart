import 'package:flutter/material.dart';
import 'package:learning_flutter_1/presentation/screens/home/home_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/second_screen.dart';
import 'package:learning_flutter_1/presentation/screens/login/login_screen.dart';
import 'package:learning_flutter_1/presentation/screens/order/order_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/products_screen.dart';
import 'package:learning_flutter_1/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => MyHomeScreen(title: "Home Screen"),
    AppRoutes.login: (context) => Loginpage(),
    AppRoutes.products: (context) => ProductsScreen(),
    AppRoutes.orders: (context) => OrdersScreen(),
    AppRoutes.second: (context) => SecondScreen(),
    // AppRoutes.profile: (context) => ProfilePage(),
    // AppRoutes.settings: (context) => SettingsPage(),
  };
}
