import 'package:flutter/material.dart';
import 'package:food_app_demo/untils/colors.dart';
import 'package:food_app_demo/widgets/icon_and_text.dart';
import 'package:food_app_demo/widgets/small_text.dart';

import '../widgets/big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.90);
  var _currPage= 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      _currPage = pageController.page!;
      print('this is current page'+ _currPage.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.only(top: 10),
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }), //create a carousel
    );
  }
}

Widget _buildPageItem(int index) {
  // container in carousel
  return Stack(
    children: [
      Container(
        height: 230, // height of 1st stack
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:
              index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
          image: const DecorationImage(
            fit: BoxFit.cover, //fit img = container
            image: AssetImage("assets/image/product1.png"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter, // align Container to conter bottom
        child: Container(
          height: 120, // height of 2nd stack
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: 'PanCake',
                  color: AppColors.mainBlackColor,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => const Icon(Icons.star,
                            color: AppColors.mainColor, size: 15),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SmallText(text: '4.5'),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(text: '1467'),
                    const SizedBox(
                      width: 10,
                    ),
                    SmallText(text: 'comments')
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconAndText(
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.iconColor1),
                    IconAndText(
                        icon: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.mainColor),
                    IconAndText(
                        icon: Icons.alarm_rounded,
                        text: '32min',
                        iconColor: AppColors.iconColor2)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
