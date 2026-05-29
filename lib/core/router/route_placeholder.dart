import 'package:flutter/material.dart';

/// Infrastructure placeholder until feature screens are implemented.
/// Not a product screen — router wiring only.
class RoutePlaceholder extends StatelessWidget {
  const RoutePlaceholder({required this.routeName, super.key});

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
