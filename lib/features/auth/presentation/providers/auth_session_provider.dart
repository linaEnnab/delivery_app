import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Whether the customer has an active authenticated session.
///
/// Overridden after token validation during bootstrap.
final authSessionProvider = Provider<bool>((ref) => false);
