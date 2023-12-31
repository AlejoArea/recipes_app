import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'transition_logo.dart';
import 'recipe_list_tile.dart';

import '../../domain/entity/recipe.dart';
import '../providers.dart';

class RandomRecipesScreenListView extends ConsumerWidget {
  const RandomRecipesScreenListView({required this.logoPath, super.key});

  final String logoPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Recipe>> recipesAsyncValue =
        ref.watch(randomRecipesProvider);
    return recipesAsyncValue.when(
      data: (List<Recipe> recipes) {
        // Use the retrieved recipes to build your UI
        return ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeListTile(
              title: recipes[index].title,
              imagePath: recipes[index].image,
              id: recipes[index].id,
            );
          },
        );
      },
      loading: () => Center(
          child: LoadingToList(
        imagePath: logoPath,
      )),
      error: (Object error, StackTrace stackTrace) =>
          Text('Error fetching recipes${error.toString()}'),
    );
  }
}
