import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../../../common/routers/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  _jumpToPage() {
    // 欢迎页
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(RouteNames.systemWelcome);
    });
  }

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove(); // 删除设备启动图
    // _initData(); // 初始数据
    _jumpToPage(); // 跳转界面
  }
}
