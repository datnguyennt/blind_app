
import 'package:get/get.dart';

import 'helpers/services/storage_service.dart';


class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}