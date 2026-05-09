import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_flutter_1/services/product_service.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _productService = ProductService();

  @override
  void initState() {
    _getData();
    super.initState();
  }

  Future<void> _getData() async {
    await _productService.getAllProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 👇 Background image
          Positioned.fill(
            child: Image.network(
              'https://i.pinimg.com/1200x/dc/ed/34/dced3435ec611aff50f997861c514dbb.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // 👇 Text at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Get your groceries as fast as an hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Get Started Button
                  SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push('/home'); // Replace with your route
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
