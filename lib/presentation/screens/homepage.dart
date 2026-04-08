import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_bloc.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_event.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_state.dart';
import 'package:learning_flutter_1/presentation/screens/secondpage.dart';
import 'package:learning_flutter_1/services/product_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _productService = ProductService();

  @override
  void initState() {
    _getData();
    super.initState();
  }

  Future<void> _getData() async {
    await _productService.fetchAllProducts();
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${state.counter}', style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: context.read<CounterBloc>(),
                        child: const Secondpage(),
                      ),
                    ),
                  ),
                  child: const Text('Go to Second Page'),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: 'decrementBtn',
            onPressed: () =>
                context.read<CounterBloc>().add(DecrementCounterEvent()),
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            heroTag: 'incrementBtn',
            onPressed: () =>
                context.read<CounterBloc>().add(IncrementCounterEvent()),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
