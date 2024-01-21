import 'package:food_delivery/pages/food/popular_food_page.dart';
import 'package:food_delivery/pages/food/recomended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static String getMainFoodPage() => '$initial';
  static String getPopularFoodPage() => '$popularFood';
  static String getRecommendedFoodPage() => '$recommendedFood';
  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          return const PopularFoodPage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          return const RecomendedFoodDetail();
        },
        transition: Transition.fadeIn),
  ];
}
