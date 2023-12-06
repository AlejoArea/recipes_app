import 'package:flutter/material.dart';

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

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _buildPageRoute(const HomeView());
      case '/recipe_list':
        return _buildPageRoute(const RecipesView());
      case '/recipe_details':
        final int recipeId = settings.arguments as int;
        return _buildPageRoute(RecipesDetails(recipeId: recipeId));
      default:
        return _buildPageRoute(const Placeholder());
    }
  }

  PageRouteBuilder<dynamic> _buildPageRoute(Widget page) {
    return PageRouteBuilder<dynamic>(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            page,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 500));
  }
}
