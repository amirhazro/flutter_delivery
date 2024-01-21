import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../routes/routes_helper.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image/food0.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            top: 45.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesHelper.getMainFoodPage());
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 340.h,
            child: Container(
              padding: EdgeInsets.only(
                top: 20.h,
                left: 20.w,
                right: 20.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    20.r,
                  ),
                  topLeft: Radius.circular(
                    20.r,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  BigText(
                    text: 'Introduce',
                    size: 22.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ExpandableText(
                        text:
                            'Biryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spices meatiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spices (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spicesiryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goat), and a blend of various spices and herbs. It is a popular and much-loved dish in the Indian subcontinent, and it has different region It is a popular and much-loved dish in the Indian subcontinent, and it has different regio It is a popular and much-loved dish in the Indian subcontinent, and it has different regio It is a popular and much-loved dish in the Indian subcontinent, and it has different regio It is a popular and much-loved dish in the Indian subcontinent, and it has different regio It is a popular and much-loved dish in the Indian subcontinent, and it has different regio It is a popular and much-loved dish in the Indian subcontinent, and it has different regioal variations.',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120.h,
        margin: EdgeInsets.only(
          //top: 30.h,
          left: 20.w,
          right: 20.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              40.r,
            ),
            topRight: Radius.circular(40.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  BigText(
                    text: '0',
                    size: 26.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(
                20.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20.r,
                  ),
                ),
              ),
              child: BigText(
                text: '10\$ | Add to Cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
