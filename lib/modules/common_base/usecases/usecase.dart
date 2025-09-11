

import 'package:it_navigator/modules/common_base/errors/failure.dart';
import 'package:it_navigator/modules/common_base/usecases/base_usecase.dart';

abstract class UseCase<T, P> extends BaseUseCase<T, P, Failure> {
  const UseCase();

  @override
  Failure convertError(Object error, StackTrace stackTrace) {
    if (error is Failure) {
 
      return error;
    }

    throw error;
  }
}
