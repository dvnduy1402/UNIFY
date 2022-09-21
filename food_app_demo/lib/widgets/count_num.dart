import 'package:flutter/material.dart';
import 'package:food_app_demo/utils/colors.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/widgets/app_icon.dart';
import 'package:food_app_demo/widgets/big_text.dart';

class CountNum extends StatefulWidget {
  const CountNum({Key? key})
      : super(key: key);
  @override
  State<CountNum> createState() => _CountNumState();
}

class _CountNumState extends State<CountNum> {
  int counting = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.height20,
          right: Dimensions.height20,
          top: Dimensions.height10,
          bottom: Dimensions.height10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                counting = counting - 1;
              });
            },
            child: AppIcon(
              icon: Icons.remove,
              backgroundColor: AppColors.mainColor,
            ),
          ),
          BigText(text: '\$10 x ' + counting.toString()),
          InkWell(
            onTap: () {
              setState(() {
                counting = counting + 1;
              });
            },
            child: AppIcon(
              icon: Icons.add,
              backgroundColor: AppColors.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
