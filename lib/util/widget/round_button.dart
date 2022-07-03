import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final TextStyle? textButtonStyle;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsets margin;
  const RoundedButton({
    Key? key,
    this.buttonColor,
    this.width,
    this.height,
    this.textButtonStyle,
    this.textColor,
    this.borderColor,
    required this.callback,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: width ?? double.maxFinite,
        height: height ?? 60,
        margin: margin,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? AppColor.pink01),
          borderRadius: borderRadius ?? BorderRadius.circular(5.r),
          color: AppColor.pink01,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: textButtonStyle ??
              AppTextStyle.bold14(
                color: textColor ?? AppColor.white,
              ),
        ),
      ),
    );
  }
}
