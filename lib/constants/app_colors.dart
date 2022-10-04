import 'dart:math';

import 'package:flutter/material.dart';

abstract class Palette {
  static const Color primary = Color(0xff7485C0);
  static const Color secondary = Color(0xffFCE900);
  static const Color scaffoldBackgroundColor = Color(0xffFFFFFF);
  static const Color lightGrey = Color(0xff747474);
  static const Color lightGreyExpansion = Color(0xff737373);
  static const Color lightYellow = Color(0xffFFF6A0);
  static const Color white = Color(0xffFFFFFF);
  static const Color expansionBackgroundtile = Color(0xffFFFFFF);
  static const Color lightBlue = Color(0xffCBD5F0);
  static const Color lightGreen = Color(0xffC2EDCE);
  static const Color lightRed = Color(0xffE5C0C8);
   static const Color expansionTileBackgroundcolor = Color(0xffCBCDD5);
  static const Color bottomNav = Color(0xffFBFBFB);
  static const Color appBarText = Color(0xff231F20);
  static const Color navyBlue = Color(0xff064C91);
  static const Color reasonBG = Color(0xffF1F2F2);
  static const Color reasonBorder = Color(0xffA7A9AC);
  static const Color black = Color(0xff000000);
  static const Color blueBorder = Color(0xff074C91);
  static const Color lightViolet = Color(0xff7485C0);
  static const Color reviewBG = Color(0xffF7F5F5);
  static const Color ratingStar = Color(0xff7180BE);
  static const Color txtGrey = Color(0xff939598);

  // static const Color txtGrey2 = Color(0xff666666);
  static const Color containerBackground = Color(0xffE6E7E8);
   static const Color expansionBackground = Color(0xffD1D3D4);

}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) {
  return max(0, min((value + ((255 - value) * factor)).round(), 255));
}

Color tintColor(Color color, double factor) {
  return Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1,
  );
}

int shadeValue(int value, double factor) {
  return max(0, min(value - (value * factor).round(), 255));
}

Color shadeColor(Color color, double factor) {
  return Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1,
  );
}
