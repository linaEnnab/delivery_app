import 'package:delivery_app/core/errors/failures.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/features/spin_wheel/data/datasources/spin_wheel_remote_datasource.dart';
import 'package:delivery_app/features/spin_wheel/domain/repositories/spin_wheel_repository.dart';
import 'package:delivery_app/shared/domain/entities/loyalty.dart';
import 'package:delivery_app/shared/domain/entities/spin_wheel_availability.dart';
import 'package:fpdart/fpdart.dart';

class SpinWheelRepositoryImpl implements SpinWheelRepository {
  SpinWheelRepositoryImpl({
    required SpinWheelRemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remote = remoteDataSource,
        _networkInfo = networkInfo;

  // ignore: unused_field
  final SpinWheelRemoteDataSource _remote;
  // ignore: unused_field
  final NetworkInfo _networkInfo;

  @override
  Future<Result<SpinWheelAvailability>> getAvailability() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }

  @override
  Future<Result<SpinWheelResult>> spin() async {
    return const Left(Failure.unexpected(message: 'Not implemented'));
  }
}
