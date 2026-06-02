import 'package:flutter/foundation.dart';

/// Maps a dev machine URL so it works on the **Android emulator**.
///
/// On the emulator, `127.0.0.1` / `localhost` refer to the emulator itself, not
/// the host where your API runs. The host loopback alias is `10.0.2.2`.
///
/// On a **physical** Android device, use your computer's LAN IP in `.env`
/// (e.g. `http://192.168.1.10:5262`); `127.0.0.1` is not reachable from the phone.
String resolveApiBaseUrlForDevice(String raw) {
  final url = raw.trim();
  if (kIsWeb) return url;
  if (defaultTargetPlatform != TargetPlatform.android) return url;

  const mappings = <String, String>{
    'http://127.0.0.1': 'http://10.0.2.2',
    'http://localhost': 'http://10.0.2.2',
  };
  for (final e in mappings.entries) {
    if (url.startsWith(e.key)) {
      return e.value + url.substring(e.key.length);
    }
  }
  return url;
}
