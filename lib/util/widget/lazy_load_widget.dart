import 'package:blinder/util/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LazyLoadWidget extends StatelessWidget {
  final bool isLoading;
  final double withStroke;

  LazyLoadWidget({required this.isLoading, this.withStroke = 4.0});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: CircularProgressIndicator(
        color: AppColor.pink01,
        strokeWidth: withStroke,
      ),
    );
  }
}
