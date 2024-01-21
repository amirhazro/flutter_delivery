import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/popular_products_controllers.dart';
import 'package:food_delivery/controllers/recomended_products_controllers.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/pages/food/popular_food_page.dart';
import 'package:food_delivery/routes/routes_helper.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  var _height = 220;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //popular products slide
        GetBuilder<PopularProductsController>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? Container(
                  height: 320.h,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: popularProducts.popularProductList.length,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesHelper.getPopularFoodPage());
                        },
                        child: _buildPageItem(position,
                            popularProducts.popularProductList[position]),
                      );
                    },
                  ),
                )
              : CircularProgressIndicator(
                  color: AppColors.mainColor,
                );
        }),
        GetBuilder<PopularProductsController>(builder: (popularProducts) {
          return DotsIndicator(
            dotsCount: popularProducts.popularProductList.length.isLowerThan(1)
                ? 1
                : popularProducts.popularProductList.length,
            position: _currPageValue.toInt(),
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),

        SizedBox(
          height: 30.h,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 30.w,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: 'Recommended',
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 3,
                ),
                child: BigText(
                  text: '.',
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: 'Food Pairing',
                ),
              ),
            ],
          ),
        ),
        GetBuilder<RecomendedProductsController>(builder: (recommendedProduct) {
          return recommendedProduct.isLoaded
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: recommendedProduct.recomendedProductList.length,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutesHelper.getRecommendedFoodPage());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 20.w,
                          right: 20.w,
                          bottom: 10.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 120.h,
                              width: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                                color: Colors.white38,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    AppConstant.BASE_URL +
                                        '/uploads/' +
                                        recommendedProduct
                                            .recomendedProductList[index].img,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 100.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                        20.r,
                                      ),
                                      bottomRight: Radius.circular(
                                        20.r,
                                      ),
                                    ),
                                    color: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 10.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BigText(
                                          text: recommendedProduct
                                              .recomendedProductList[index]
                                              .name),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SmallText(
                                        text: recommendedProduct
                                            .recomendedProductList[index]
                                            .description,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconAndText(
                                            icon: Icons.circle_sharp,
                                            text: 'Normal',
                                            color: AppColors.iconColor1,
                                          ),
                                          IconAndText(
                                            icon: Icons.location_on,
                                            text: '1.7 Km',
                                            color: AppColors.mainColor,
                                          ),
                                          IconAndText(
                                            icon: Icons.access_time_rounded,
                                            text: '30 Min',
                                            color: AppColors.iconColor2,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Container();
        })
      ],
    );
  }

  Widget _buildPageItem(int index, Products popularProductList) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220.h,
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF929ffc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(AppConstant.BASE_URL +
                    '/uploads/' +
                    popularProductList.img!),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                left: 15.w,
                right: 15.w,
                top: 10.h,
              ),
              height: 130.h,
              margin: EdgeInsets.only(
                left: 30.w,
                right: 30.w,
                bottom: 15.h,
              ),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    offset: Offset(0, 5),
                    blurRadius: 5.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                    // blurRadius: 5.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                    // blurRadius: 5.0,
                  )
                ],
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              child: AppColumn(
                text: popularProductList.name!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
