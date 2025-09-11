part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Statuses.initial) Statuses loginStatus,
    @Default(Statuses.initial) Statuses signUpStatus,
    Failure? error,
  }) = _AuthState;

  const AuthState._();
}
