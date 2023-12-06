import 'package:riverpod/riverpod.dart';

import 'repositories/repository_imp.dart';

final Provider<Repository> repositoryProvider =
    Provider<Repository>((ProviderRef<Repository> ref) => Repository());
