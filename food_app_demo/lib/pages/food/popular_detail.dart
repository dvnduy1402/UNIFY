import 'package:flutter/material.dart';
import 'package:food_app_demo/utils/colors.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/utils/introduce_detail_text.dart';
import 'package:food_app_demo/widgets/app_icon.dart';
import 'package:food_app_demo/widgets/big_text.dart';
import 'package:food_app_demo/widgets/count_num.dart';
import 'package:food_app_demo/widgets/expandable_text.dart';
import 'package:food_app_demo/widgets/panel_column.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //img of food
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite, //max width
              height: Dimensions.popularImgSize, //350
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/product2.png")),
              ),
            ),
          ),
          //iconbutton
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios_new)),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(
            top: Dimensions.popularImgSize - Dimensions.height20, //move up 20
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.height15,
                  right: Dimensions.height15,
                  top: Dimensions.height15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PanelColumn(text: 'Name of dish', size: Dimensions.font20),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableText(text: RandomText.text)))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.navbarSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: Dimensions.height20),
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.height20,
                  right: Dimensions.height20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius30)),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.mainBlackColor),
                  BigText(text: '0'),
                  Icon(Icons.add, color: AppColors.mainBlackColor)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: Dimensions.height20),
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  left: Dimensions.height10,
                  bottom: Dimensions.height15,
                  right: Dimensions.height10),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius30)),
              child: BigText(text: '10\$ | add to cart'),
            )
          ],
        ),
      ),
    );
  }
}
