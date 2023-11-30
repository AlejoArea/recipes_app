import 'package:flutter/material.dart';

import '../../domain/entity/recipe.dart';
import '../../presentation/views/home_view.dart';
import '../../presentation/views/recipe_details.dart';
import '../../presentation/views/recipes_view.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> getRoutes() {
    return <String, Widget Function(BuildContext)>{
      '/home': (BuildContext context) => const HomeView(),
      '/recipe_list': (BuildContext context) => const RecipesView(),
      '/recipe_details': (BuildContext context) {
        final int recipeId = ModalRoute.of(context)!.settings.arguments as int;
        return RecipesDetails(recipeId: recipeId);
      },
    };
  }
}
