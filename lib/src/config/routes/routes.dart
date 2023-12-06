import 'package:flutter/material.dart';

import '../../domain/entity/recipe.dart';
import '../../presentation/views/home_view.dart';
import '../../presentation/views/recipe_details.dart';
import '../../presentation/views/recipes_view.dart';
import '../../presentation/widgets/random_recipes_list_view.dart';
import '../../presentation/widgets/recipe_screen_list_view.dart';
import '../utils/ui_constants.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> getRoutes() {
    return <String, Widget Function(BuildContext)>{
      '/home': (BuildContext context) => const HomeView(),
      '/recipe_list': (BuildContext context) => RecipesView(child: const RecipesScreenListView(logoPath: UiConstants.allRecipesImageLogoPath,),),
      '/random_recipe_list': (BuildContext context) => RecipesView(child: const RandomRecipesScreenListView(logoPath: UiConstants.randomRecipesImageLogoPath,)),
      '/recipe_details': (BuildContext context) {
        final int recipeId = ModalRoute.of(context)!.settings.arguments as int;
        return RecipesDetails(recipeId: recipeId);
      },
    };
  }
}
