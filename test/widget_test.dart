import 'package:delivery_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AppTheme provides Material 3 color scheme', (tester) async {
    await tester.pumpWidget(
      MaterialApp(theme: AppTheme.light(), home: const SizedBox()),
    );

    final context = tester.element(find.byType(SizedBox));
    final theme = Theme.of(context);
    expect(theme.useMaterial3, isTrue);
    expect(theme.colorScheme.primary, isNotNull);
  });
}
