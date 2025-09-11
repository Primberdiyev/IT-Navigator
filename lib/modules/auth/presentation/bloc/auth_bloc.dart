import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it_navigator/modules/auth/domain/domain.dart';
import 'package:it_navigator/modules/auth/domain/use_cases/login_use_case.dart';
import 'package:it_navigator/modules/common_base/bloc/base_bloc.dart';
import 'package:it_navigator/modules/common_base/bloc/statuses.dart';
import 'package:it_navigator/modules/common_base/errors/failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc({required LoginUseCase loginUseCase})
      : _loginUseCase = loginUseCase,
        super(AuthState()) {
    on<LoginEvent>(login);
  }
  final LoginUseCase _loginUseCase;

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
}
