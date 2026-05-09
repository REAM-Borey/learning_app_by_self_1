import 'package:flutter/material.dart';
import 'package:learning_flutter_1/presentation/screens/home/home_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/second_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/welcome_screen.dart';
import 'package:learning_flutter_1/presentation/screens/login/login_screen.dart';
import 'package:learning_flutter_1/presentation/screens/order/order_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/products_screen.dart';
import 'package:learning_flutter_1/presentation/screens/register/register_screen.dart';
import 'package:learning_flutter_1/presentation/screens/splash/splash_screen.dart';
import 'package:learning_flutter_1/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.login: (context) => const LoginScreen(),
    AppRoutes.products: (context) => const ProductsScreen(),
    AppRoutes.orders: (context) => const OrdersScreen(),
    AppRoutes.second: (context) => const SecondScreen(),
    AppRoutes.splash: (context) => const SplashScreen(),
    AppRoutes.register: (context) => const RegisterScreen(),
    AppRoutes.welcome: (context) => const WelcomeScreen(),
  };
}
