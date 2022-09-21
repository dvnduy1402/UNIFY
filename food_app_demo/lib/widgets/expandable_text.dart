import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/utils/dimensions.dart';
import 'package:food_app_demo/widgets/small_text.dart';

import '../utils/colors.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textLenght = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textLenght) {
      firstHalf = widget.text.substring(0, textLenght.toInt());
      secondHalf = widget.text
          .substring(textLenght.toInt() + 1, widget.text.length.toInt());
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: Dimensions.font16,
            )
          : Column(
              children: [
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (firstHalf + '...')
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText; //if hidden text = true (or not)
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(text: hiddenText?'Show more':'Show less', color: AppColors.mainColor),
                      Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: AppColors.mainColor)
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
