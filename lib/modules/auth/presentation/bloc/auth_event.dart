part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  const LoginEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}

class RegisterEvent extends AuthEvent {
  const RegisterEvent({required this.user});

  final SignUpUseCaseParams user;
}
