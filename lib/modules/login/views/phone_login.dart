import 'package:blinder/modules/login/login.dart';
import 'package:blinder/util/common/common_widget.dart';
import 'package:blinder/util/constants/constants.dart';
import 'package:blinder/util/theme/app_colors.dart';
import 'package:blinder/util/theme/app_text_style.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../util/widget/appbar_logo.dart';
import '../../../util/widget/border_button.dart';
import '../../../util/widget/header_widget.dart';
import '../../../util/widget/input_field.dart';
import '../widget/item_widget.dart';

class PhoneLoginPage extends GetView<LoginController> {
  PhoneLoginPage({Key? key}) : super(key: key);
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
                  right: 20,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _bodyWidget(context),
                _footerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildCountryPickerDropdownSoloExpanded(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: CountryPickerDropdown(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        onValuePicked: (Country country) {
          print("${country.name}");
        },
        itemBuilder: (Country country) {
          return Row(
            children: <Widget>[
              SizedBox(width: 8.w),
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  "${country.isoCode}(+${country.phoneCode})",
                  style: AppTextStyle.bold18(),
                ),
              ),
            ],
          );
        },
        itemHeight: null,
        isExpanded: true,
        initialValue: 'VN',
        icon: SvgPicture.asset(
          AppImage.DOWN_ICON,
        ),
        itemFilter: (c) => ['VN', 'LA', 'US', 'KH'].contains(c.isoCode),
        priorityList: [
          CountryPickerUtils.getCountryByIsoCode('VN'),
        ],
      ),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ItemWidget(
            title: "Country",
            widget: _buildCountryPickerDropdownSoloExpanded(context),
          ),
          ItemWidget(
            title: "Phone",
            boxDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            widget: InputField(
              controller: phoneController,
              iconSurfix: AppImage.PHONE_ICON,
              keyboardType: TextInputType.phone,
            ),
          ),
          SizedBox(
            width: Get.width,
            child: Text(
              "We need your mobile number \n to get you signed in",
              style: AppTextStyle.regular12(),
              textAlign: TextAlign.center,
            ),
          ),
          BorderButton(
            callback: () {
              Get.toNamed(Routes.oTPVerify);
            },
            height: 55.h,
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            width: double.maxFinite,
            text: "Continue",
          ),
        ],
      ),
    );
  }

  Widget _footerWidget() {
    return Expanded(
      flex: 2,
      child: Container(
        width: Get.width,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
        child: Text(
          'Terms Of Use Privacy Policy',
          textAlign: TextAlign.center,
          style: AppTextStyle.regular12(),
        ),
      ),
    );
  }
}
