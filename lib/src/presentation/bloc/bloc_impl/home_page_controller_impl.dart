import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/recipe_response_model.dart';
import '../../../data/repositories/repository_imp.dart';

class HomePageController {
  final Provider<Repository> repositoryProvider =
      Provider((ProviderRef<Object?> ref) => Repository());

  final FutureProvider<ResponseModel> apiProvider =
      FutureProvider((FutureProviderRef<Object?> ref) async {
    final Repository recipe = ref.watch(repositoryProvider);
    return recipe.fetchRecipes();
  });
}
