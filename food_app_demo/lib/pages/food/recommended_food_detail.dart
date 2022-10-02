import 'package:flutter/material.dart';
import 'package:food_app_demo/utils/colors.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/utils/introduce_detail_text.dart';
import 'package:food_app_demo/widgets/app_icon.dart';
import 'package:food_app_demo/widgets/big_text.dart';
import 'package:food_app_demo/widgets/count_num.dart';
import 'package:food_app_demo/widgets/expandable_text.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                  color: Colors.white,
                ),
                child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: 'Sliver App Bar')),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 5),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: Dimensions.pageView,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/product2.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.height10, right: Dimensions.height10),
                    color: Colors.white,
                    child: ExpandableText(
                        text: RandomText.text +
                            RandomText.text +
                            RandomText.text +
                            RandomText.text)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CountNum(),
          Container(
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
                      borderRadius: BorderRadius.circular(Dimensions.radius20)),
                  child: Icon(Icons.favorite,color: AppColors.mainColor),
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
        ],
      ),
    );
  }
}
