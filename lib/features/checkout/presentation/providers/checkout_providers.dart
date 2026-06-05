import 'package:delivery_app/core/network/dio_client.dart';
import 'package:delivery_app/core/network/network_info.dart';
import 'package:delivery_app/features/checkout/data/datasources/checkout_remote_datasource.dart';
import 'package:delivery_app/features/checkout/data/repositories/checkout_repository_impl.dart';
import 'package:delivery_app/features/checkout/domain/repositories/checkout_repository.dart';
import 'package:delivery_app/features/checkout/domain/usecases/place_order_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkoutRemoteDataSourceProvider = Provider<CheckoutRemoteDataSource>(
  (ref) => CheckoutRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final checkoutRepositoryProvider = Provider<CheckoutRepository>(
  (ref) => CheckoutRepositoryImpl(
    remoteDataSource: ref.watch(checkoutRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);

final placeOrderUseCaseProvider = Provider<PlaceOrderUseCase>(
  (ref) => PlaceOrderUseCase(ref.watch(checkoutRepositoryProvider)),
);
