import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/controllers/popular_products_controllers.dart';
import 'package:food_delivery/data/repositories/cart_repo.dart';
import 'package:food_delivery/data/repositories/popular_product_repo.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/instance_manager.dart';

import '../controllers/recomended_products_controllers.dart';
import '../data/api/api_client.dart';
import '../data/repositories/recomended_product_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstant.BASE_URL));
  //repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecomendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());
  //controllers
  Get.lazyPut(() => PopularProductsController(popularProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
  Get.lazyPut(
      () => RecomendedProductsController(recomendedProductRepo: Get.find()));
}
