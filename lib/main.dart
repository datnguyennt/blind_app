import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/routes/app_pages.dart';
import 'data/app_preference.dart';
import 'modules/modules.dart';
import 'util/common/initlizer.dart';
import 'util/lang/translation_service.dart';
import 'util/theme/app_themes.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  // await GetStorage.init();
  // AppPreference().init();
  //Get.put<ThemeController>(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: InitialBindings(),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        //Hello
      ),
    );
  }
}
