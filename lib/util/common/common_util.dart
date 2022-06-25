import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/models.dart';
import '/modules/common/commons.dart';
import '/util/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '/modules/common/loading.dart' as loading;

class CommonUtil {
  static bool isEmpty(obj) {
    if (obj is String) return obj.isEmpty;
    if (obj is List) return obj.isEmpty || obj.length == 0;
    return obj == null;
  }

  static showToast(
    String msg, {
    Color textColor = Colors.black87,
    Color backgroundColor = Colors.grey,
  }) {
    loading.Toast.show(msg,
        textColor: textColor, backgroundColor: backgroundColor);
  }

  static showLoading() {
    loading.showLoadingIndicator();
  }

  static hideLoading() {
    loading.hideLoadingIndicator();
  }

  static void handleErrorResponse(ErrorModel response,
      {bool showErrorPage = true}) {
    if (response.code == 401) return;
    var message = "Có lỗi xảy ra";
    switch (response.type) {
      case ErrorType.NO_INTERNET:
        message = "Có lỗi xảy ra trong quá trình kết nối.";
        break;
      case ErrorType.TIME_OUT:
        message = "Kết nối quá thời gian chờ";
        break;
      case ErrorType.CANCELLED:
        message = "Kết nối đã bị hủy";
        break;
      default:
        break;
    }
    showToast(message);
    // response.message = message;
    // Get.to(ErrorPage(error: response));
    if (showErrorPage) {
      response.message = message;
      Get.off(ErrorPage(error: response));
    }
  }

  // static Future<VietIdUser?> saveUser({required VietIdUser vietIdUser}) async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   await _prefs.setString(LocaleKeys.VIETID, vietIdUser.userId ?? "");
  //   await _prefs.setString(LocaleKeys.TOKEN, vietIdUser.accessToken ?? "");
  //   await _prefs.setString(LocaleKeys.USER, vietIdUser.userName ?? "");
  //   await _prefs.setString(LocaleKeys.EMAIL, vietIdUser.userEmail ?? "");
  //   await _prefs.setString(LocaleKeys.PHONE, vietIdUser.userPhone ?? "");
  //   return loadUser();
  // }
  //
  // static Future<VietIdUser?> loadUser() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   VietIdUser vietIdUser = VietIdUser();
  //   vietIdUser.userName = _prefs.getString(LocaleKeys.USER);
  //   vietIdUser.userEmail = _prefs.getString(LocaleKeys.EMAIL);
  //   vietIdUser.userPhone = _prefs.getString(LocaleKeys.PHONE);
  //   vietIdUser.accessToken = _prefs.getString(LocaleKeys.TOKEN);
  //   vietIdUser.userId = _prefs.getString(LocaleKeys.VIETID);
  //   return vietIdUser;
  // }
  //
  // static Future<void> clearUser() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   await _prefs.remove(LocaleKeys.VIETID);
  //   await _prefs.remove(LocaleKeys.TOKEN);
  //   await _prefs.remove(LocaleKeys.USER);
  //   await _prefs.remove(LocaleKeys.EMAIL);
  //   await _prefs.remove(LocaleKeys.PHONE);
  // }

  static openBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
