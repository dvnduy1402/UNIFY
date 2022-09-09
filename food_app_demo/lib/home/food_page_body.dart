import 'package:dots_indicator/dots_indicator.dart';
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
  var _currPage = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      height: 320,
      margin: const EdgeInsets.only(top: 10),
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }), //create a carousel
    ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPage,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 230, // height of 1st stack
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
          index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
          image: const DecorationImage(
            fit: BoxFit.cover, //fit img = container
            image: AssetImage("assets/image/product1.png"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter, // align Container to contain bottom
        child: Container(
          height: 120, // height of 2nd stack
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFe8e8e8),
                // blurRadius: 5.0,
                offset: Offset(0, 5),
              )
            ],


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
                  children: const [
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
