import 'package:delivery_app/shared/domain/entities/product.dart';

/// Builds horizontal menu tabs from product category ids (API-driven).
List<({String id, String labelAr})> menuCategoriesFromProducts(
  List<Product> products,
) {
  final orderedIds = <String>[];
  final labelById = <String, String>{};

  for (final p in products) {
    for (final cid in p.categoryIds) {
      if (cid.isEmpty) continue;
      if (!orderedIds.contains(cid)) {
        orderedIds.add(cid);
      }
      final hint = p.categoryName;
      if (hint != null && hint.isNotEmpty) {
        labelById[cid] = hint;
      }
    }
  }

  final out = <({String id, String labelAr})>[
    (id: 'all', labelAr: 'الكل'),
  ];
  for (final id in orderedIds) {
    out.add((id: id, labelAr: labelById[id] ?? id));
  }
  return out;
}
