import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/config/routes/routes.dart';


void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Routes _routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recipes App',
      onGenerateRoute: Routes().generateRoute,
      initialRoute: '/home',
    );
  }
}
