import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders'), centerTitle: true),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue[200],
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.shopping_bag, size: 40),
                SizedBox(width: 12),
                Text('Order #1', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red[200],
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: const Center(child: Text('Order #2')),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: const Center(child: Text('Order #3')),
          ),
        ],
      ),
    );
  }
}
