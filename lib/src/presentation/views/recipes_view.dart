import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class RecipesView extends ConsumerWidget {
  RecipesView({super.key, required this.child});

  Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipes',
        ),
      ),
      body: child,
    );
  }
}

