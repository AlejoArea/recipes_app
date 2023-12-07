import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entity/detailed_recipe.dart';
import '../providers.dart';
import '../widgets/details.dart';
import '../widgets/transition_logo.dart';

class RecipesDetails extends ConsumerWidget {
  const RecipesDetails({
    required this.imagePath,
    super.key,
    required this.recipeId,
  });

  final int recipeId;
  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<FullRecipe> recipeAsyncValue =
        ref.watch(recipeByIdProvider(recipeId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe details'),
      ),
      body: recipeAsyncValue.when(
        data: (FullRecipe recipe) => Details(recipe: recipe),
        error: (Object e, __) => Center(child: Text(e.toString())),
        loading: () => Center(
          child: TransitionLogo(imagePath: imagePath),
        ),
      ),
    );
  }
}
