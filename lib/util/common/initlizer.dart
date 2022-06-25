import 'package:blinder/modules/modules.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashService>(
          () => SplashService(),
    );
  }
}