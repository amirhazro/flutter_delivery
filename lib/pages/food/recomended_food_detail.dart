import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/routes/routes_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RecomendedFoodDetail extends StatelessWidget {
  const RecomendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesHelper.getMainFoodPage());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20.h),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 5.h,
                    bottom: 10.h,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          20.r,
                        ),
                        topLeft: Radius.circular(
                          20.r,
                        ),
                      ),
                      color: Colors.white),
                  child: Center(
                    child: BigText(
                      text: 'Chinese Side',
                      size: 26.sp,
                    ),
                  ),
                )),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: SmallText(
                text:
                    'Biryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or iryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or gogoBiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or iryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or gogoBiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or iryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or gogoBiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or iryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or goiryani is a flavorful and aromatic South Asian dish made with basmati rice,iryani is a flavorful and aromatic South Asian dish made with basmati rice, meat (such as chicken, mutton, beef, or gogo',
                size: 16.sp,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 50.w, right: 50.w, bottom: 10.h, top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: 24.h,
                ),
                BigText(
                  text: '\$ 12.88 X 0 ',
                  size: 26.sp,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: 24.h,
                ),
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
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
        ],
      ),
    );
  }
}
