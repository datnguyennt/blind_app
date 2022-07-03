import 'dart:developer';

import 'package:blinder/modules/login/widget/item_widget.dart';
import 'package:blinder/modules/user/controller/user_controller.dart';
import 'package:blinder/util/common/common.dart';
import 'package:blinder/util/constants/constants.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/widget/customer_radio.dart';
import 'package:blinder/util/widget/input_field.dart';
import 'package:blinder/util/widget/prevent_back.dart';
import 'package:blinder/util/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateUserView extends GetView<UserController> {
  const CreateUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreventBack(
      child: AppFocusBehavior(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                _avatarWidget(),
                _informationWidget(),
                RoundedButton(
                  callback: () {},
                  margin: EdgeInsets.fromLTRB(
                    30.w,
                    0.h,
                    30.w,
                    20.h,
                  ),
                  title: "Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    return SizedBox(
      height: 225.h,
      width: Get.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 80.w,
            child: Container(
              height: 225.h,
              width: Get.width,
              color: AppColor.grey01,
            ),
          ),
          InkWell(
            onTap: () {
              log('add new image');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppImage.CAMERA_ICON_1,
                height: 25.h,
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _informationWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          //Full name
          ItemWidget(
            title: "Name",
            padding: EdgeInsets.symmetric(vertical: 10.h),
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            required: true,
            widget: InputField(
              controller: controller.fullNameController,
              iconSurfix: AppImage.HUMAN_ICON,
              keyboardType: TextInputType.name,
              placeholder: 'Enter Your name',
            ),
          ), //BirthDate
          ItemWidget(
            title: "Birth Date",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: controller.birthDateController,
              iconSurfix: AppImage.DATE_ICON,
              keyboardType: TextInputType.datetime,
              placeholder: 'dd/MM/yyyy',
            ),
          ), //Full name
          ItemWidget(
            title: "Gender",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: _radioGender(),
          ), //Full name
          ItemWidget(
            title: "Location",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: controller.fullNameController,
              iconSurfix: AppImage.LOCATION_ICON,
              keyboardType: TextInputType.streetAddress,
            ),
          ), //Full name
          ItemWidget(
            title: "Job",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: controller.jobController,
              iconSurfix: AppImage.WORK_ICON,
            ),
          ), //Full name
          ItemWidget(
            title: "Company",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: controller.companyController,
              iconSurfix: AppImage.COMPANY_ICON,
            ),
          ),
          //Full name
          SizedBox(
            height: 5.h,
          ),
          ItemWidget(
            padding: EdgeInsets.zero,
            title: "About me",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: controller.aboutMeController,
              keyboardType: TextInputType.multiline,
              minLines: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _radioGender() {
    return Obx(
      () => SizedBox(
        height: 55,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: controller.genders.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  controller.changeStatusRadio(index);
                },
                child: CustomRadio(controller.genders[index]),
              );
            }),
      ),
    );
  }
}
