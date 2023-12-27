import 'package:flutter/material.dart';

import 'index.dart';

/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    colorScheme: lightColorScheme,
    fontFamily: "Roboto",
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    colorScheme: darkColorScheme,
    fontFamily: "Roboto",
  );
}
