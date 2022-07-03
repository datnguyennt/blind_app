import 'package:blinder/data/models/gender.model.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomRadio extends StatelessWidget {
  final Gender _gender;

  const CustomRadio(this._gender, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: Container(
          height: 80.h,
          width: 100.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: _gender.isSelected ? AppColor.pink01 : AppColor.grey02,
            ),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                _gender.icon,
                color: _gender.isSelected ? AppColor.pink01 : AppColor.grey02,
                height: 15.h,
              ),
              Text(
                _gender.name,
                style: TextStyle(
                  color: _gender.isSelected ? AppColor.pink01 : AppColor.grey02,
                ),
              )
            ],
          ),
        ));
  }
}
