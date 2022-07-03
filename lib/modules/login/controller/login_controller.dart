import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static LoginController get to => Get.find<LoginController>();
  AnimationController? animationController;
  int levelClock = 300;

  @override
  void onInit() {
    animationController = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: levelClock,
        ) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    animationController!.forward();
    super.onInit();
  }

  @override
  void onClose() {
    animationController!.dispose();
    super.onClose();
  }
}
