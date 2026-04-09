import 'package:flutter/material.dart';
import 'package:learning_flutter_1/presentation/screens/home/homepage.dart';
import 'package:learning_flutter_1/presentation/screens/login/loginpage.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'It\'s a great day for coffee'),
    );
  }
}
