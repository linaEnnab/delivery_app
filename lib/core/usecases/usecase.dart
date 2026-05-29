import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:fpdart/fpdart.dart';

/// Base contract for domain use cases returning [Result].
abstract interface class UseCase<T, Params> {
  Future<Result<T>> call(Params params);
}

/// Use cases without parameters.
abstract interface class NoParamsUseCase<T> {
  Future<Result<T>> call();
}

/// Synchronous variant for local-only operations.
abstract interface class SyncUseCase<T, Params> {
  Either<Failure, T> call(Params params);
}
