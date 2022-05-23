import 'dart:async';
import 'dart:developer';

import 'package:async/async.dart';
import 'package:blinder/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashService extends GetxService {
  final memo = AsyncMemoizer<void>();

  Future<void> init() {
    log('init splash');
    return memo.runOnce(_initFunction);
  }

  Future<void> _initFunction() async {
    final t = Timer.periodic(
      Duration(seconds: 2),
      (t) => {Get.toNamed(Routes.home)},
    );
    t.cancel();
  }
}
