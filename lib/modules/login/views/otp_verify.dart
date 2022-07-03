import 'dart:developer';

import 'package:blinder/modules/login/login.dart';
import 'package:blinder/routes/app_pages.dart';
import 'package:blinder/util/common/count_down.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:blinder/util/widget/appbar_logo.dart';
import 'package:blinder/util/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../util/widget/header_widget.dart';

class OTPVerifyPage extends StatelessWidget {
  final _controller = LoginController.to;
  OTPVerifyPage({Key? key}) : super(key: key);
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: commonAppBar(
            action: [
              AppLogoWidget(
                padding: EdgeInsets.only(
                  right: 20.w,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleWidget(
                  text: 'Please enter the 6 digit OTP\nsent to +843 497 6831',
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
                Column(
                  children: [
                    _titleWidget(
                      text: 'Don\'t tell anyone the code \n',
                      textStyle: AppTextStyle.regular12(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Countdown(
                        animation: StepTween(
                          begin: 300, // THIS IS A USER ENTERED NUMBER
                          end: 0,
                        ).animate(
                          _controller.animationController!,
                        ),
                      ),
                    ),
                  ],
                ),
                _titleWidget(
                  text: 'RESEND OTP',
                  textStyle: AppTextStyle.bold12(
                    color: AppColor.pink02,
                  ),
                  ontap: () {
                    log('on tap button');
                  },
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                ),
                RoundedButton(
                  title: 'Accept',
                  callback: () {
                    Get.toNamed(Routes.createUser);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleWidget({
    required String text,
    TextStyle? textStyle,
    VoidCallback? ontap,
    EdgeInsets? margin,
    EdgeInsets? padding,
  }) {
    return Container(
      margin: margin,
      alignment: Alignment.center,
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: padding ?? EdgeInsets.all(0),
          child: Text(
            text,
            style: textStyle ?? AppTextStyle.regular14(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
