import 'package:blinder/data/models/gender.model.dart';
import 'package:blinder/util/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController localtionController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();

  RxString gender = ''.obs;
  RxList<Gender> genders = <Gender>[].obs;

  @override
  void onInit() {
    genders.value = [
      Gender(name: "Male", icon: AppImage.MALE_ICON, isSelected: true),
      Gender(name: "Female", icon: AppImage.FEMALE_ICON,),
      Gender(name: "Another", icon: AppImage.Trans_Icon,),
    ];
    genders.refresh();
    super.onInit();
  }

  void changeStatusRadio(int index) {
    for (var gender in genders) {
      gender.isSelected = false;
    }
    genders[index].isSelected = true;
    genders.refresh();
  }
}
