import 'package:flutter/material.dart';

/// Non-restaurant home UI strings and chips (promos, categories, hero copy).
abstract final class HomeFeedStaticData {
  /// Current city label for header (Arabic-first demo).
  static const String cityDisplayNameAr = 'عمان';

  /// Street / neighborhood line under region (hero header demo).
  static const String heroStreetLineAr = 'شارع عمان، نابلس';

  static const String heroStreetLineEn = 'Amman St., Nablus';

  static const List<({String title, String? subtitle, IconData icon})> promos =
      <({String title, String? subtitle, IconData icon})>[
    (
      title: 'خصم ٢٥٪ على أول طلب',
      subtitle: 'استخدم كود: أول_طلب',
      icon: Icons.percent_rounded,
    ),
    (
      title: 'توصيل مجاني',
      subtitle: 'على طلبات فوق ١٥ د.أ',
      icon: Icons.delivery_dining_rounded,
    ),
    (
      title: 'وجبات العائلة',
      subtitle: 'أطباق كبيرة بأسعار أقل',
      icon: Icons.restaurant_menu_rounded,
    ),
  ];

  static const List<({String id, String label, IconData icon})> categories =
      <({String id, String label, IconData icon})>[
    (id: 'all', label: 'الكل', icon: Icons.grid_view_rounded),
    (id: 'chicken', label: 'دجاج', icon: Icons.lunch_dining_rounded),
    (id: 'pizza', label: 'بيتزا', icon: Icons.local_pizza_rounded),
    (id: 'burger', label: 'برغر', icon: Icons.fastfood_rounded),
    (id: 'dessert', label: 'حلويات', icon: Icons.cake_rounded),
    (id: 'drinks', label: 'مشروبات', icon: Icons.local_cafe_rounded),
    (id: 'more', label: 'المزيد', icon: Icons.more_horiz_rounded),
  ];
}
