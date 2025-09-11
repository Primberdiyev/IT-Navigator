import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

abstract class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message = 'Network error',
    required this.statusCode,
  });

  final int statusCode;

  @override
  List<Object?> get props => [
        statusCode,
        message,
      ];
}

class AuthFailure extends Failure {
  const AuthFailure({required super.message});
}

class NetworkInfoFailure extends NetworkFailure {
  const NetworkInfoFailure({
    super.message = 'Network info error',
    required super.statusCode,
  });
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure({
    super.message = 'No Connection',
  });
}

class RetryMaxAttemptsFailure extends Failure {
  const RetryMaxAttemptsFailure({
    super.message = 'Retry max attempts reached',
  });
}

class CustomFailure extends Failure {
  const CustomFailure({
    required String title,
  }) : super(message: title);
}

class InvalidRefreshTokenFailure {
  const InvalidRefreshTokenFailure();
}

class UnhandledFailure {
  const UnhandledFailure(this.error, this.stackTrace);
  final StackTrace stackTrace;
  final Object error;
}
