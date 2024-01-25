import 'package:flutter/material.dart';
import 'package:food_delivery/data/repositories/popular_product_repo.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

//test login commit 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
class PopularProductsController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductsController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  int _quantity = 0;
  bool get isLoaded => _isLoaded;
  int get quantity => _quantity;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList
          .addAll(Product.fromJson(response.body).products as Iterable);
      _isLoaded = true;
      update();
    } else {
      throw Exception();
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar(
        'Item Count ',
        'You Have no More items Left',
        colorText: Colors.white,
        backgroundColor: AppColors.mainColor,
      );
      quantity = 0;
      return quantity;
    } else if (quantity > 20) {
      Get.snackbar(
        'Item Count ',
        "You can't add More items",
        colorText: Colors.white,
        backgroundColor: AppColors.mainColor,
      );
      quantity = 20;
      return quantity;
    } else {
      return quantity;
    }
  }
}
