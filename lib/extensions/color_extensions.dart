import 'package:flutter/material.dart';

extension ColorExtension on Color {
  String get hex {
    //要显示透明度的 16进制
    return '#${alpha.toRadixString(16).padLeft(2, '0')}${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';
  }

  MaterialColor get materialColor {
    return createMaterialColor(this);
  }

  MaterialColor createMaterialColor(Color color) {
    Map<int, Color> colorSwatch = {
      50: _tintColor(color, 0.9),
      100: _tintColor(color, 0.8),
      200: _tintColor(color, 0.6),
      300: _tintColor(color, 0.4),
      400: _tintColor(color, 0.2),
      500: color, // 主色
      600: _shadeColor(color, 0.1),
      700: _shadeColor(color, 0.2),
      800: _shadeColor(color, 0.3),
      900: _shadeColor(color, 0.4),
    };
    return MaterialColor(color.value, colorSwatch);
  }

// 调整颜色的亮度以生成较浅的色调
  Color _tintColor(Color color, double factor) {
    return Color.fromRGBO(
      color.red + ((255 - color.red) * factor).round(),
      color.green + ((255 - color.green) * factor).round(),
      color.blue + ((255 - color.blue) * factor).round(),
      1,
    );
  }

  // 调整颜色的亮度以生成较深的色调
  Color _shadeColor(Color color, double factor) {
    return Color.fromRGBO(
      (color.red * (1 - factor)).round(),
      (color.green * (1 - factor)).round(),
      (color.blue * (1 - factor)).round(),
      1,
    );
  }
}
