import 'package:blinder/modules/login/login.dart';
import 'package:blinder/modules/login/views/phone_login.dart';
import 'package:blinder/modules/modules.dart';
import 'package:blinder/modules/splash/splash.dart';
import 'package:blinder/modules/user/user.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.createUser;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: Routes.splash,
        page: () => SplashView(),
        binding: SplashBinding()),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.loginPhone,
      page: () => PhoneLoginPage(),
    ),
    GetPage(
      name: Routes.oTPVerify,
      page: () => OTPVerifyPage(),
    ),
    GetPage(
      name: Routes.createUser,
      page: () => CreateUserView(),
      binding: UserBinding(),
    ),
  ];
}
