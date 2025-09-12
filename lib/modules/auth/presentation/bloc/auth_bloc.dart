import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_navigator/modules/auth/domain/domain.dart';
import 'package:it_navigator/modules/auth/domain/use_cases/login_use_case.dart';
import 'package:it_navigator/modules/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:it_navigator/modules/common_base/bloc/base_bloc.dart';
import 'package:it_navigator/modules/common_base/bloc/statuses.dart';
import 'package:it_navigator/modules/common_base/errors/failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
      {required LoginUseCase loginUseCase,
      required SignUpUseCase signUpUseCase})
      : _loginUseCase = loginUseCase,
        _signUpUseCase = signUpUseCase,
        super(AuthState()) {
    on<LoginEvent>(login);
    on<RegisterEvent>(register);
  }
  final LoginUseCase _loginUseCase;
  final SignUpUseCase _signUpUseCase;

  Future<void> login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: Statuses.loading));
    final result = await _loginUseCase(
      LoginUseCaseParams(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      onFailure: (error) => emit(
        state.copyWith(
          error: error,
          loginStatus: Statuses.error,
        ),
      ),
      onSuccess: (user) => emit(
        state.copyWith(
          loginStatus: Statuses.success,
        ),
      ),
    );
  }

  Future<void> register(RegisterEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(signUpStatus: Statuses.loading));
    final result = await _signUpUseCase(event.user);
    result.fold(
      onFailure: (e) => emit(
        state.copyWith(
          error: e,
          signUpStatus: Statuses.error,
        ),
      ),
      onSuccess: (_) => emit(state.copyWith(signUpStatus: Statuses.success)),
    );
  }
}
