import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/auth/data/data_sources/data_sources.dart';
import 'package:it_navigator/modules/auth/data/repository/auth_repository_impl.dart';
import 'package:it_navigator/modules/auth/domain/use_cases/login_use_case.dart';
import 'package:it_navigator/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:it_navigator/modules/common_base/di/di.dart';

class AuthDiModule extends BaseDiModule {
  const AuthDiModule();
  @override
  void initModule(GetIt getIt) {
    getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        getIt<FirebaseAuth>(),
      ),
    );

    getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSource: getIt<AuthRemoteDataSource>(),
      ),
    );

    getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(
        repository: getIt<AuthRepository>(),
      ),
    );

    getIt.registerFactory(
      () => AuthBloc(
        loginUseCase: getIt<LoginUseCase>(),
      ),
    );
  }
}
