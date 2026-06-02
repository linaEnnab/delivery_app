import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class NetworkInfo {
  Future<bool> get isConnected;
  Stream<bool> get onConnectivityChanged;
}

final class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this._connectivity);

  final Connectivity _connectivity;

  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return !_isOffline(result);
  }

  @override
  Stream<bool> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.map((r) => !_isOffline(r));

  bool _isOffline(List<ConnectivityResult> results) {
    // `Iterable.every` is true on an empty list — without this guard, an empty
    // result from the plugin is misread as offline and every API call shows
    // "No internet connection" before Dio runs.
    if (results.isEmpty) return false;
    return results.every((r) => r == ConnectivityResult.none);
  }
}

final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) => NetworkInfoImpl(ref.watch(connectivityProvider)),
);
