// domain/usecases/login_usecase.dart
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/domain/entity/login_use_case_params.dart';
import 'package:it_navigator/modules/auth/domain/repository/auth_repository.dart';
import 'package:it_navigator/modules/common_base/usecases/usecases.dart';

class LoginUseCase extends UseCase<void, LoginUseCaseParams> {
  LoginUseCase({required this.repository});
  final AuthRepository repository;

  @override
  FutureOr<User?> makeRequest(LoginUseCaseParams params) =>
      repository.login(params);
}
