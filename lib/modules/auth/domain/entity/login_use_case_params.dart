import 'package:equatable/equatable.dart';

class LoginUseCaseParams extends Equatable {
  const LoginUseCaseParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
