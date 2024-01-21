import 'package:food_delivery/data/repositories/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/repositories/recomended_product_repo.dart';
import '../models/product_model.dart';

class RecomendedProductsController extends GetxController {
  final RecomendedProductRepo recomendedProductRepo;
  RecomendedProductsController({required this.recomendedProductRepo});
  List<dynamic> _recomendedProductList = [];
  List<dynamic> get recomendedProductList => _recomendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Future<void> getRecomendedProductList() async {
    Response response = await recomendedProductRepo.getRecomendedProductList();
    if (response.statusCode == 200) {
      _recomendedProductList = [];
      _recomendedProductList
          .addAll(Product.fromJson(response.body).products as Iterable);
      _isLoaded = true;
      update();
    } else {
      throw Exception();
    }
  }
}
