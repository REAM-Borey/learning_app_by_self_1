import 'package:flutter/material.dart';
import 'package:learning_flutter_1/presentation/screens/home/homepage.dart';
import 'package:learning_flutter_1/presentation/screens/login/loginpage.dart';
import 'package:learning_flutter_1/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) =>
        MyHomePage(title: "It's a great day for coffee"),
    AppRoutes.login: (context) => Loginpage(),
    // AppRoutes.profile: (context) => ProfilePage(),
    // AppRoutes.settings: (context) => SettingsPage(),
  };
}
