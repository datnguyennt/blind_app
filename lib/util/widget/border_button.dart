import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BorderButton extends StatefulWidget {
  final String text;
  final VoidCallback callback;
  final double radius;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  TextStyle? textStyleButton;
  final String? icon;

  BorderButton({
    this.radius = 5,
    required this.text,
    required this.callback,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.textStyleButton,
    this.icon,
  });

  @override
  State<BorderButton> createState() => _BorderButtonState();
}

class _BorderButtonState extends State<BorderButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      hoverColor: AppColor.white,
      focusColor: AppColor.white,
      highlightColor: AppColor.white,
      onHighlightChanged: (param) {
        setState(() {
          isPressed = param;
        });
      },
      child: Container(
        margin: widget.margin ?? EdgeInsets.zero,
        padding: widget.padding ?? EdgeInsets.zero,
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: isPressed ? AppColor.pink01 : AppColor.white,
          borderRadius: BorderRadius.circular(this.widget.radius),
          border: Border.all(
            color: isPressed ? AppColor.pink01 : AppColor.white,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColor.shadowColor.withOpacity(0.25),
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        constraints: BoxConstraints(minWidth: 50, minHeight: 30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon != null)
              SvgPicture.asset(
                widget.icon!,
                height: 20.sp,
                color: isPressed ? AppColor.white : AppColor.pink01,
              ),
            SizedBox(width: 10.w),
            Text(
              widget.text,
              style: AppTextStyle.bold14(
                color: isPressed ? AppColor.white : AppColor.pink01,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
