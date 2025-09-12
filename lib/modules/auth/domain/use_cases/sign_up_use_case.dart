import 'dart:async';

import 'package:it_navigator/modules/auth/domain/domain.dart';
import 'package:it_navigator/modules/common_base/usecases/usecases.dart';

class SignUpUseCase extends UseCase<void, SignUpUseCaseParams> {
  const SignUpUseCase(this.repository);
  final AuthRepository repository;

  @override
  FutureOr makeRequest(SignUpUseCaseParams params) => repository.signUp(params);
}
