import 'package:flutter_riverpod/flutter_riverpod.dart';

/// In-memory set of mock order IDs that already have a submitted review this session.
///
/// Replaces a future API `POST /orders/{id}/reviews` success flag for UI state.
final orderReviewSubmittedIdsProvider =
    NotifierProvider<OrderReviewSubmittedIds, Set<String>>(
  OrderReviewSubmittedIds.new,
);

final class OrderReviewSubmittedIds extends Notifier<Set<String>> {
  @override
  Set<String> build() => <String>{};

  void markSubmitted(String orderId) {
    state = {...state, orderId};
  }
}
