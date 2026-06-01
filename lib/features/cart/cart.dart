/// Cart feature — shopping cart (mock/local).
library;

export 'domain/cart_business_rules.dart';
export 'domain/repositories/cart_repository.dart';
export 'domain/usecases/add_product_to_cart_usecase.dart';
export 'domain/usecases/clear_cart_usecase.dart';
export 'domain/usecases/decrease_cart_item_quantity_usecase.dart';
export 'domain/usecases/get_cart_usecase.dart';
export 'domain/usecases/increase_cart_item_quantity_usecase.dart';
export 'domain/usecases/remove_cart_item_usecase.dart';
export 'presentation/cart_feedback.dart';
export 'presentation/pages/cart_page.dart';
export 'presentation/providers/cart_providers.dart';
