import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  /* static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
*/
  static getScreenHeight() => Get.height;

  static getScreenWidth() => Get.width;

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }

  //static dimensions
  //static double pageView = getScreenHeight() / 2.64;
  //static double pageViewContainer = getScreenHeight() / 3.84;
  //static double pageViewTextContainer = getScreenHeight() / 7.03;

  //static double height10 = getScreenHeight() / 84.4
}
