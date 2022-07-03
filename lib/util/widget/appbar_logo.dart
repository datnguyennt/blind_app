import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../theme/app_text_style.dart';

class AppLogoWidget extends StatelessWidget {
  final EdgeInsets padding;
  const AppLogoWidget({Key? key, this.padding = EdgeInsets.zero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          SvgPicture.asset(
            AppImage.ICON_LOGO_SVG,
            height: 23.h,
            width: 23.h,
          ),
          SizedBox(width: 10.w),
          Text(
            "BLIND DATE",
            style: AppTextStyle.regular12(),
          ),
        ],
      ),
    );
  }
}
