import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.white, // ✅ White background
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 4),
                Text('Phnom Penh, Cambodia', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          Container(height: 200, color: Colors.green),
          Container(height: 200, color: Colors.blue),
          Container(height: 200, color: Colors.orange),
        ],
      ),
    );
  }
}
