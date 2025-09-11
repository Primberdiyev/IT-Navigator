import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/common_base/di/base_di_module.dart';
import 'package:it_navigator/modules/common_base/navigation/auto_route.dart';

class CoreDiModule extends BaseDiModule {
  @override
  void initModule(GetIt getIt) {
    getIt.registerLazySingleton<AppRouter>(
      () => AppRouter(),
    );

    getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  }
}
