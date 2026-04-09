import 'package:flutter/material.dart';
import 'package:learning_flutter_1/presentation/screens/home/homepage.dart';
import 'package:learning_flutter_1/presentation/screens/login/loginpage.dart';
import 'package:learning_flutter_1/routes/app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => MyHomePage(title: 'It\'s a great day for coffee'),
        );
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => Loginpage());
      // case AppRoutes.profile:
      //   return MaterialPageRoute(builder: (_) => ProfilePage());
      // case AppRoutes.settings:
      //   return MaterialPageRoute(builder: (_) => SettingsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
