import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/payments/data/datasources/payments_remote_datasource.dart';
import 'package:delivery_app/features/payments/domain/create_payment_session_params.dart';
import 'package:delivery_app/features/payments/domain/repositories/payments_repository.dart';
import 'package:delivery_app/shared/domain/entities/payment_session.dart';
import 'package:fpdart/fpdart.dart';

class PaymentsRepositoryImpl implements PaymentsRepository {
  PaymentsRepositoryImpl({
    required PaymentsRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final PaymentsRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<PaymentSession>> createSession(
    CreatePaymentSessionParams params,
  ) async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<PaymentSession>> getSession(String sessionId) async {
    return Left(Failure.unexpected(message: 'Not implemented: $sessionId'));
  }
}
