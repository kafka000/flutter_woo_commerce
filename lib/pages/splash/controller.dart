import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  String title = "我是 splash 页面";
  _initData() {
    update(["splash_title"]);
  }

  void onTap(int ticket) {
    title = "GetBuilder -> 点击了第 $ticket 个按钮";
    update(['splash_title']);
  }
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
