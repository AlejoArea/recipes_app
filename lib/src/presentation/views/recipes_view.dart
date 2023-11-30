import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/recipe_screen_list_view.dart';

class RecipesView extends ConsumerWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipes',
        ),
      ),
      body: const RecipesScreenListView(),
    );
  }
}

