import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Country',
                      color: AppColors.mainColor,
                    ),
                    const Text('City'),
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
