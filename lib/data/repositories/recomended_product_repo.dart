import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:get/get.dart';

class RecomendedProductRepo extends GetxService {
  ApiClient apiClient;
  RecomendedProductRepo({required this.apiClient});
  Future<Response> getRecomendedProductList() async {
    return await apiClient.getData(AppConstant.RECOMENDED_FOOD_URI);
  }
}
