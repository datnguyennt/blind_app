import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../util/theme/app_colors.dart';
import '../../../util/theme/app_text_style.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.title,
    this.boxDecoration,
    required this.widget,
    this.required = false,
    this.padding,
  }) : super(key: key);
  final String title;
  final Widget widget;
  final bool required;
  final EdgeInsets? padding;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 5.h,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyle.regular12(),
                ),
                if (required)
                  Text(
                    ' *',
                    style: AppTextStyle.bold16(),
                  ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: boxDecoration ??
                BoxDecoration(
                  border: Border.all(
                    color: AppColor.grey02,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
            child: widget,
          ),
        ],
      ),
    );
  }
}
