import 'package:blinder/util/common/logger.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:blinder/util/widget/border_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/modules/modules.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Xin chào bạn',
                style: AppTextStyle.bold28(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
