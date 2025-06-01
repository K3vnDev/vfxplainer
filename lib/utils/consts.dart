import 'package:flutter/material.dart';

class Consts {
  Consts._();

  static const String appName = "VFXplainer";

  static const double horizontalPadding = 32;
  static const double topPadding = 80;
  static const double bottomPadding = 64;

  static const EdgeInsets pagePadding = EdgeInsets.only(
    left: horizontalPadding,
    right: horizontalPadding,
    top: topPadding,
    bottom: bottomPadding,
  );

  static const appColor = Color.fromARGB(255, 176, 177, 252);
}
