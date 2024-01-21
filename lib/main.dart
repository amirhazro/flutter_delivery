import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/popular_products_controllers.dart';
import 'package:food_delivery/pages/food/recomended_food_detail.dart';
import 'package:food_delivery/helper/dependencies.dart' as dep;
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/routes/routes_helper.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';

import 'controllers/recomended_products_controllers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductsController>().getPopularProductList();
    Get.find<RecomendedProductsController>().getRecomendedProductList();
    return ScreenUtilInit(
      designSize: const Size(411, 866),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              textTheme:
                  Typography.englishLike2018.apply(fontSizeFactor: 1.sp)),
          home: child,
          initialRoute: RoutesHelper.initial,
          getPages: RoutesHelper.routes,
        );
      },
      child: const MainFoodPage(),
    );
  }
}
