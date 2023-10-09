// App Colors

import 'package:flutter/material.dart';

class AppColor {
  static const transparent = Color(0x00FFFFFF);
  static const black = Color(0xff000000);
  static const white = Color(0xFFFFFFFF);
  static const grey = Colors.grey;

  // Hexadecimal Color
  static Color hexGrey = fromHex('#121212');

  static Color fromHex(
    String hexString,
  ) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write(
        'ff',
      );
    }
    buffer.write(
      hexString.replaceFirst(
        '#',
        '',
      ),
    );
    return Color(
      int.parse(
        buffer.toString(),
        radix: 16,
      ),
    );
  }
}
