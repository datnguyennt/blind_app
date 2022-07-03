import 'package:blinder/util/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color? textColor;
  final double? fontSize;
  final bool password;
  final String? Function(String?)? validator;
  String? iconSurfix;
  final int? minLines;

  InputField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.textColor,
    this.fontSize,
    this.password = false,
    this.validator,
    this.iconSurfix,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: minLines == null ? 55.h : 150.h,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.green,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.grey02,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.pink01,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          suffixIcon: iconSurfix != null
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.h),
                  child: SvgPicture.asset(
                    iconSurfix ?? '',
                  ),
                )
              : const SizedBox(),
          labelStyle: AppTextStyle.bold16(
            color: textColor ?? AppColor.grey01,
          ),
          hintText: placeholder,
          hintStyle: AppTextStyle.bold16(
            color: textColor ?? AppColor.grey02,
          ),
          filled: true,
          isDense: true,
        ),
        controller: controller,
        style: AppTextStyle.bold16(
          color: textColor ?? AppColor.grey01,
        ),
        minLines: minLines,
        maxLines: 10,
        keyboardType: keyboardType,
        obscureText: password,
        autocorrect: false,
        validator: validator,
      ),
    );
  }
}
