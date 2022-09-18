import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/utils/colors.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/widgets/big_text.dart';
import 'package:food_app_demo/widgets/icon_and_text.dart';
import 'package:food_app_demo/widgets/small_text.dart';

class PanelColumn extends StatelessWidget {
  final String text;
  final double size;
  const PanelColumn({Key? key, required this.text, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          color: AppColors.mainBlackColor,
          size: size==0?Dimensions.font20:size,
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
    );
  }
}
