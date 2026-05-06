import 'package:flutter/material.dart';
import 'package:learning_flutter_1/data/models/backend/api/api_product.dart';
import 'package:learning_flutter_1/presentation/screens/home/home_screen.dart';
import 'package:learning_flutter_1/presentation/screens/home/second_screen.dart';
import 'package:learning_flutter_1/presentation/screens/login/login_screen.dart';
import 'package:learning_flutter_1/presentation/screens/order/order_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/product_detail_screen.dart';
import 'package:learning_flutter_1/presentation/screens/products/products_screen.dart';
import 'package:learning_flutter_1/routes/app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => MyHomeScreen(title: 'Home Screen'),
        );
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => Loginpage());
      case AppRoutes.products:
        return MaterialPageRoute(builder: (_) => ProductsScreen());
      case AppRoutes.productDetail:
        return MaterialPageRoute(
          builder: (_) =>
              ProductDetailScreen(product: settings.arguments as Product),
        );
      case AppRoutes.orders:
        return MaterialPageRoute(builder: (_) => OrdersScreen());
      case AppRoutes.second:
        return MaterialPageRoute(builder: (_) => SecondScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
