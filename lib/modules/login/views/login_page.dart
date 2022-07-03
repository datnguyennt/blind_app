import 'package:blinder/modules/login/login.dart';
import 'package:blinder/routes/app_pages.dart';
import 'package:blinder/util/constants/app_image.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:blinder/util/widget/border_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../util/widget/appbar_logo.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLogoWidget(),
              SvgPicture.asset(
                AppImage.THUMBNAIL_LOGIN,
                height: 250.h,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Welcome To\n',
                      style: AppTextStyle.regular14(
                        color: AppColor.grey02,
                      ),
                    ),
                    TextSpan(
                      text: 'BLIND DATE\n',
                      style: AppTextStyle.bold28(),
                    ),
                    TextSpan(
                      text: 'Match. Chat. Meet.',
                      style: AppTextStyle.bold12(
                        color: AppColor.pink02,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  BorderButton(
                    callback: () {
                      Get.toNamed(Routes.loginPhone);
                    },
                    height: 55.h,
                    width: double.maxFinite,
                    icon: AppImage.PHONE_ICON,
                    text: "Continue With  Phone",
                  ),
                  SizedBox(height: 10.h),
                  BorderButton(
                    height: 55.h,
                    width: double.maxFinite,
                    callback: () {},
                    icon: AppImage.FACEBOOK,
                    text: "Continue With  Facebook",
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Don\'t have account ?',
                      style: AppTextStyle.regular12(
                        color: AppColor.grey02,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign Up!',
                      style: AppTextStyle.bold12(
                        color: AppColor.pink01,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
