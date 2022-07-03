import 'package:blinder/util/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CommonWidget {
  static AppBar appBar(
    BuildContext context, {
    String title = "",
    String? backIcon,
    List<Widget>? actions,
  }) {
    return AppBar(
      leading: backIcon == null
          ? null
          : InkWell(
              onTap: () => Get.back(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: SvgPicture.asset(
                  backIcon,
                ),
              ),
            ),
      centerTitle: true,
      title: Text(title, style: AppTextStyle.bold16()),
      backgroundColor: Colors.transparent,
      actions: actions,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
