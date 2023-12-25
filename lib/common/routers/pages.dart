import 'package:flutter_woo_commerce/pages/login/index.dart';
import 'package:flutter_woo_commerce/pages/splash/index.dart';
import 'package:get/get.dart';

class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: "/",
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: "/splash",
      page: () => const SplashPage(),
    ),
  ];
}
