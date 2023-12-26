import 'dart:ui';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../index.dart';

/// 配置服务
class ConfigService extends GetxService {
  // 这是一个单例写法
  static ConfigService get to => Get.find();
  // 当前语言 import 'dart:ui';
  Locale locale = PlatformDispatcher.instance.locale;

  PackageInfo? _platform;
  // 当前版本
  String get version => _platform?.version ?? '-';

  // 初始化
  Future<ConfigService> init() async {
    await getPlatform();
    return this;
  }

  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  // 初始语言 import '../index.dart';
  void initLocale() {
    var langCode = Storage().getString(Constants.storageLanguageCode);
    if (langCode.isEmpty) return;
    var index = Translation.supportedLocales.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = Translation.supportedLocales[index];
  }

  // 更改语言
  void onLocaleUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }

  @override
  void onReady() {
    super.onReady();
    initLocale();
  }
}
