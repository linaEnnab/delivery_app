import 'package:delivery_app/shared/domain/entities/product.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// UI + menu mock for [RestaurantDetailPage] — no backend.
abstract final class MockRestaurantDetailData {
  static const String restaurantId = 'feat_2';

  static const String coverAsset = 'assets/images/restaurant_detail_cover.png';

  static const String nameAr = 'الملكي بروست';
  static const String tagsAr = 'بروست • سندويشات • وجبات';
  static const String descriptionAr =
      'وجبات بروست مقرمشة، سندويشات ساخنة، وصوصاتنا المميزة. نختار المكونات بعناية ونحضّر الطلب طازجًا عند الطلب.';

  /// Opening line for demo (Arabic-first copy).
  static const String openingStatusAr = 'مفتوح الآن · يغلق ١١:٥٩ م';

  static const double rating = 4.6;
  static const String ratingCountLabel = '(1200+)';
  static const String deliveryTimeRange = '30-45';
  static final Money deliveryFee =
      const Money(amount: 10, currencyCode: 'ILS');

  static const List<({String id, String labelAr})> categories = [
    (id: 'all', labelAr: 'الكل'),
    (id: 'sandwiches', labelAr: 'السندويشات'),
    (id: 'burger', labelAr: 'البرجر'),
    (id: 'fries', labelAr: 'البطاطا'),
    (id: 'meals', labelAr: 'الوجبات'),
    (id: 'drinks', labelAr: 'المشروبات'),
  ];

  static List<Product> products(String restaurantId) => [
        Product(
          id: 'p1',
          restaurantId: restaurantId,
          name: 'تورتيلا كرسبي أو كرنشي',
          description:
              'خبزة تورتيلا + صوص ملكي + خس + مخلل خيار + قطع دجاج كرسبي',
          price: const Money(amount: 18, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?w=400&q=80',
          categoryIds: const ['sandwiches'],
        ),
        Product(
          id: 'p2',
          restaurantId: restaurantId,
          name: 'تورتيلا هاش براون',
          description: 'خبزة تورتيلا + هاش براون + صوص ملكي + جبنة + خس',
          price: const Money(amount: 22, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1553909489-cd47e0907980?w=400&q=80',
          categoryIds: const ['sandwiches'],
        ),
        Product(
          id: 'p3',
          restaurantId: restaurantId,
          name: 'شنيتسل',
          description: 'قطعة شنيتسل مقرمشة + خبز + مخلل + صوص ثوم',
          price: const Money(amount: 12, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1606755962773-324ef08e570c?w=400&q=80',
          categoryIds: const ['sandwiches', 'meals'],
        ),
        Product(
          id: 'p4',
          restaurantId: restaurantId,
          name: 'مسحب مشوي',
          description: 'دجاج مسحب مشوي + خبز عربي + سلطة ملفوف',
          price: const Money(amount: 20, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=400&q=80',
          categoryIds: const ['sandwiches'],
        ),
        Product(
          id: 'p5',
          restaurantId: restaurantId,
          name: 'تشيز هوت دوغ',
          description: 'سجق + جبنة موزاريلا + خبز هوت دوغ + صوص خردل',
          price: const Money(amount: 10, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1612392061808-2d76b811c0a4?w=400&q=80',
          categoryIds: const ['sandwiches'],
        ),
        Product(
          id: 'p6',
          restaurantId: restaurantId,
          name: 'برجر كلاسيك',
          description: 'قطعة لحم مشوية + خس + طماطم + مخلل + صوص خاص',
          price: const Money(amount: 24, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400&q=80',
          categoryIds: const ['burger'],
        ),
        Product(
          id: 'p7',
          restaurantId: restaurantId,
          name: 'بطاطا مقلية',
          description: 'بطاطا مقرمشة مع صوص اختياري',
          price: const Money(amount: 8, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1573080496219-bb080dd4d13c?w=400&q=80',
          categoryIds: const ['fries'],
        ),
        Product(
          id: 'p8',
          restaurantId: restaurantId,
          name: 'وجبة عائلية',
          description: '٨ قطع دجاج + بطاطا كبيرة + ٤ صوصات + مشروبات',
          price: const Money(amount: 89, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=400&q=80',
          categoryIds: const ['meals'],
        ),
        Product(
          id: 'p9',
          restaurantId: restaurantId,
          name: 'عصير برتقال طازج',
          description: 'عصير برتقال طازج ٣٥٠ مل',
          price: const Money(amount: 12, currencyCode: 'ILS'),
          imageUrl:
              'https://images.unsplash.com/photo-1600271886742-f049cd451bba?w=400&q=80',
          categoryIds: const ['drinks'],
        ),
      ];
}
