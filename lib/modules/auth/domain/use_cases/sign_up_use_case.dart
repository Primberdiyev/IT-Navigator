// domain/usecases/sign_up_usecase.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/domain/repository/auth_repository.dart';

class SignUpUseCase {
  const SignUpUseCase(this.repository);
  final AuthRepository repository;

  Future<User?> call(SignUpUseCaseParams params) {
    return repository.signUp(params.email, params.password);
  }
}

class SignUpUseCaseParams {
  const SignUpUseCaseParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
