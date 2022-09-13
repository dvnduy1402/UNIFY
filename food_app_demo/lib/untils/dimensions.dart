import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //dynamic height widgets
  static double pageView = screenHeight/2.64; //844/320
  static double pageViewContainer = screenHeight/3.84; //844/220
  static double pageViewTextContainer = screenHeight/7.03; //844/1.2
  static double height10 = screenHeight/84.4;
  static double height20 = screenHeight/42.2;

  static double font20 = screenHeight/42.2;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
  static double radius15 = screenHeight/56.2;


}