import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/wallet.dart';

abstract interface class WalletRepository {
  Future<Result<WalletBalance>> getBalance();

  Future<Result<List<WalletTransaction>>> getTransactions({
    int page = 1,
    int pageSize = 20,
  });
}
