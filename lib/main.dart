import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_1/app.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => CounterBloc(), child: App()));
}
