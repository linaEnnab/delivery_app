import 'package:flutter/foundation.dart';

/// Rewrites loopback hosts in [raw] so the API is reachable on the current device.
///
/// - **Android emulator:** `127.0.0.1` / `localhost` → `10.0.2.2` (host loopback).
/// - **macOS, iOS simulator, desktop, web:** `10.0.2.2` → `127.0.0.1` when `.env`
///   was written for the Android emulator.
///
/// On a **physical** phone, use your computer's LAN IP in `.env`
/// (e.g. `http://192.168.1.10:5262`); loopback is not reachable from the device.
String resolveApiBaseUrlForDevice(String raw) {
  final url = raw.trim();
  if (kIsWeb) return url;

  if (defaultTargetPlatform == TargetPlatform.android) {
    return _replacePrefix(url, const {
      'http://127.0.0.1': 'http://10.0.2.2',
      'http://localhost': 'http://10.0.2.2',
    });
  }

  return _replacePrefix(url, const {
    'http://10.0.2.2': 'http://127.0.0.1',
  });
}

String _replacePrefix(String url, Map<String, String> mappings) {
  for (final entry in mappings.entries) {
    if (url.startsWith(entry.key)) {
      return entry.value + url.substring(entry.key.length);
    }
  }
  return url;
}
