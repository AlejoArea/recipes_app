import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories/repository_imp.dart';
import 'usecases/get_recipe_usecase.dart';

final recipeUseCaseProvider = Provider<GetRecipeUsecase>((ref) {
  final repository = Repository();
  return GetRecipeUsecase(repository: repository);
});
