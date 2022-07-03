import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import '../../../util/common/common.dart';
import '../../../util/constants/constants.dart';
import '/modules/modules.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 10,
              child: Center(
                child: SvgPicture.asset(
                  AppImage.ICON_LOGO_SVG,
                  height: height(256),
                  width: width(256),
                  //allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
