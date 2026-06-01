import 'package:delivery_app/shared/domain/entities/restaurant_summary.dart';
import 'package:flutter/material.dart';

/// Static feed content for marketplace home (replace with repository later).
abstract final class MockHomeFeedData {
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

  static final List<RestaurantSummary> featuredRestaurants =
      <RestaurantSummary>[
    _r(
      id: 'feat_1',
      name: 'برغر التسعينات',
      imageUrl:
          'https://images.unsplash.com/photo-1550547660-d9450f859349?w=600&q=80',
      rating: 4.7,
      reviewCount: 812,
      cuisineTags: 'برغر • أمريكي',
      minMinutes: 20,
      maxMinutes: 35,
      minOrder: 7,
      fee: 1.25,
    ),
    _r(
      id: 'feat_2',
      name: 'ملكي بروست دجاج',
      imageUrl:
          'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=600&q=80',
      rating: 4.6,
      reviewCount: 1204,
      cuisineTags: 'دجاج • بروست',
      minMinutes: 25,
      maxMinutes: 40,
      minOrder: 6,
      fee: 0,
      free: true,
    ),
    _r(
      id: 'feat_3',
      name: 'بيتزا نابولي',
      imageUrl:
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&q=80',
      rating: 4.5,
      reviewCount: 430,
      cuisineTags: 'بيتزا • إيطالي',
      minMinutes: 30,
      maxMinutes: 45,
      minOrder: 8,
      fee: 1.99,
    ),
    _r(
      id: 'feat_4',
      name: 'سوشي توكيو',
      imageUrl:
          'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=600&q=80',
      rating: 4.8,
      reviewCount: 356,
      cuisineTags: 'سوشي • آسيوي',
      minMinutes: 35,
      maxMinutes: 50,
      minOrder: 12,
      fee: 2.5,
    ),
  ];

  static final List<RestaurantSummary> nearbyRestaurants = <RestaurantSummary>[
    _r(
      id: 'near_1',
      name: 'شاورما الشام',
      imageUrl:
          'https://images.unsplash.com/photo-1529006557810-274b9b2fc783?w=600&q=80',
      rating: 4.4,
      reviewCount: 2890,
      cuisineTags: 'شاورما • لبناني',
      minMinutes: 15,
      maxMinutes: 28,
      minOrder: 4,
      fee: 0.99,
    ),
    _r(
      id: 'near_2',
      name: 'كبدة وقدود',
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=600&q=80',
      rating: 4.2,
      reviewCount: 940,
      cuisineTags: 'مشاوي • عربي',
      minMinutes: 30,
      maxMinutes: 45,
      minOrder: 10,
      fee: 0,
      free: true,
    ),
    _r(
      id: 'near_3',
      name: 'سلطة بوكس',
      imageUrl:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&q=80',
      rating: 4.9,
      reviewCount: 210,
      cuisineTags: 'صحي • سلطات',
      minMinutes: 18,
      maxMinutes: 32,
      minOrder: 6,
      fee: 1.1,
    ),
    _r(
      id: 'near_4',
      name: 'فلافل أبو عدنان',
      imageUrl:
          'https://images.unsplash.com/photo-1592417817038-d13fefadd258?w=600&q=80',
      rating: 4.3,
      reviewCount: 1560,
      cuisineTags: 'فلافل • سريع',
      minMinutes: 12,
      maxMinutes: 22,
      minOrder: 3,
      fee: 0.75,
    ),
    _r(
      id: 'near_5',
      name: 'ستيك هاوس ٧٧',
      imageUrl:
          'https://images.unsplash.com/photo-1600891964099-90d94a227d9f?w=600&q=80',
      rating: 4.6,
      reviewCount: 670,
      cuisineTags: 'ستيك • عالمي',
      minMinutes: 40,
      maxMinutes: 55,
      minOrder: 20,
      fee: 2.99,
      sponsored: true,
    ),
    _r(
      id: 'near_6',
      name: 'حلى ليالي',
      imageUrl:
          'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=600&q=80',
      rating: 4.1,
      reviewCount: 88,
      cuisineTags: 'حلويات',
      minMinutes: 25,
      maxMinutes: 40,
      minOrder: 5,
      fee: 1.5,
    ),
  ];

  static RestaurantSummary _r({
    required String id,
    required String name,
    required String imageUrl,
    required double rating,
    required int reviewCount,
    required String cuisineTags,
    required int minMinutes,
    int? maxMinutes,
    required double minOrder,
    required double fee,
    bool free = false,
    bool sponsored = false,
  }) {
    return RestaurantSummary(
      id: id,
      name: name,
      imageUrl: imageUrl,
      rating: rating,
      reviewCount: reviewCount,
      cuisineTags: cuisineTags,
      estimatedDeliveryMinutes: minMinutes,
      estimatedDeliveryMinutesMax: maxMinutes,
      minimumOrderAmount: minOrder,
      deliveryFeeAmount: fee,
      isOpen: true,
      hasFreeDelivery: free,
      isSponsored: sponsored,
    );
  }
}
