import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9002a = fromHex('#2a000000');

  static Color gray400 = fromHex('#c8c7cc');

  static Color blueGray100 = fromHex('#d7d7d7');

  static Color whiteA700B0 = fromHex('#b0ffffff');

  static Color gray500 = fromHex('#9b9a9b');

  static Color blueGray50 = fromHex('#efeff4');

  static Color blueGray400 = fromHex('#8e8e93');

  static Color gray800 = fromHex('#4a494a');

  static Color gray900 = fromHex('#262628');

  static Color yellowA700 = fromHex('#ffd200');

  static Color greenA200 = fromHex('#4ce5b1');

  static Color amberA400 = fromHex('#ffcc00');

  static Color gray50 = fromHex('#f8f8f8');

  static Color black90089 = fromHex('#89000000');

  static Color black900 = fromHex('#000000');

  static Color yellow800 = fromHex('#e3a412');

  static Color blueGray90001 = fromHex('#242e42');

  static Color pink500 = fromHex('#f52c55');

  static Color blueGray900 = fromHex('#313043');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50D1 = fromHex('#d1f8f8f8');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
