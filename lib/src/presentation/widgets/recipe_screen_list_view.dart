import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'recipe_list_tile.dart';

import '../../domain/entity/recipe.dart';
import '../providers.dart';

class RecipesScreenListView extends ConsumerWidget {
  const RecipesScreenListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Recipe>> recipesAsyncValue =
        ref.watch(recipesProvider);
    return recipesAsyncValue.when(
      data: (List<Recipe> recipes) {
        // Use the retrieved recipes to build your UI
        return ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeListTile(title: recipes[index].title, imagePath: recipes[index].image, id: recipes[index].id,);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (Object error, StackTrace stackTrace) =>
          const Text('Error fetching recipes'),
    );
  }
}
