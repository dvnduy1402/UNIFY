import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height; //844
  static double screenWidth = Get.context!.width;

  //dynamic height padding and margin
  static double pageView = screenHeight/2.64; //844/320
  static double pageViewContainer = screenHeight/3.84; //844/220
  static double pageViewTextContainer = screenHeight/7.03; //844/1.2
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.2;
  static double height20 = screenHeight/42.2;
  static double height25 = screenHeight/33.7;
  static double height35 = screenHeight/24.1;
  static double height40 = screenHeight/21.1;
  static double height45 = screenHeight/18.75;
  //font size
  static double font20 = screenHeight/42.2;
  static double font16 = screenHeight/52.75;
  static double font26 = screenHeight/32.46;

  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
  static double radius15 = screenHeight/56.2;
  //Dynamic width padding and margin
  static double width10 = screenHeight/84.4;
  static double width20 = screenHeight/42.2;
  //Icon size
  static double iconSize20 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;


  //Listview size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenHeight/3.9;

  //popular food detail page
  static double popularImgSize = screenHeight/2.41; //350

  //bottom size
  static double navbarSize = screenHeight / 7.03;
}