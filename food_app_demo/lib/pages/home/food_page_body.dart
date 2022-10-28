// ignore: avoid_web_libraries_in_flutter

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/navigation.dart';
import 'package:food_app_demo/pages/food/popular_detail.dart';
import 'package:food_app_demo/pages/food/recommended_food_detail.dart';
import 'package:food_app_demo/utils/colors.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/widgets/icon_and_text.dart';
import 'package:food_app_demo/widgets/small_text.dart';
import 'package:get/get.dart';

import '../../widgets/big_text.dart';

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
          height: Dimensions.pageView,
          margin: EdgeInsets.only(top: Dimensions.height10),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.popularFood);
            },
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),
          ),
        ), //create a carousel
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
        SizedBox(height: Dimensions.height20),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: 'Recommned',
                color: Colors.black,
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: BigText(text: '.')),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(text: 'Food Pairing'))
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
        ), //Popular - pairing
        //list of food and img
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (() {
                Get.toNamed(RouteHelper.recommendFood);
              }),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    //img section
                    Container(
                      height: Dimensions.height20 * 6, //120
                      width: Dimensions.height20 * 6,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/product2.png'),
                        ),
                      ),
                    ),
                    //Text container
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text: 'Name of dished ',
                                color: Colors.black,
                              ),
                              SizedBox(height: Dimensions.height20),
                              SmallText(
                                  text: 'This is descriptions about dished'),
                              SizedBox(
                                height: Dimensions.height20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: Dimensions.pageViewContainer, // height of 1st stack
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
              fit: BoxFit.cover, //fit img = container
              image: AssetImage("assets/image/product1.png"),
            ),
          ),
        ),
        Align(
          alignment:
              Alignment.bottomCenter, // align Container to contain bottom
          child: Container(
            height: Dimensions.pageViewTextContainer, // height of 2nd stack
            margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
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
              padding: EdgeInsets.only(
                  left: Dimensions.height15,
                  right: Dimensions.height15,
                  top: Dimensions.height15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'PanCake',
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font20,
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(Icons.star,
                              color: AppColors.mainColor, size: 15),
                        ),
                      ),
                      SizedBox(width: Dimensions.height10),
                      SmallText(text: '4.5'),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                      SmallText(text: '1467'),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                      SmallText(text: 'comments')
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
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
}
