import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static double blockSizeHorizontal = screenWidth / 100;
  static double blockSizeVertical = screenHeight / 100;
}
