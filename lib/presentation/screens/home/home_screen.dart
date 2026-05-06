import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_bloc.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_state.dart';
import 'package:learning_flutter_1/services/product_service.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});
  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
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
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => context.push('/home'),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: const Text('Products'),
              onTap: () => context.push('/products'),
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () => context.push('/login'),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () => context.push('/second'),
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/login'),
              child: Text('login screen'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/products'),
              child: Text('Products'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/orders'),
              child: const Text('Open second screen'),
            ),
          ],
        ),
      ),
    );
  }
}
