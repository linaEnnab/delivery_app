import 'package:delivery_app/core/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

typedef Result<T> = Either<Failure, T>;

extension ResultX<T> on Result<T> {
  bool get isSuccess => isRight();
  bool get isFailure => isLeft();

  T? get valueOrNull => fold((_) => null, (r) => r);
  Failure? get failureOrNull => fold((l) => l, (_) => null);
}
