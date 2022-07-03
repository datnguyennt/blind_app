import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/app_image.dart';
import 'appbar_logo.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(
            AppImage.BACK_ICON,
            height: 15.h,
          ),
        ),
        AppLogoWidget(),
      ],
    );
  }
}

AppBar commonAppBar({
  Widget? title,
  Widget? leading,
  List<Widget>? action,
}) {
  return AppBar(
    title: title,
    leading: leading ??
        IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(
            AppImage.BACK_ICON,
            height: 17.h,
          ),
        ),
    actions: action,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
