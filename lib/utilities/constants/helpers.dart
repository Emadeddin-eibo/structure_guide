import 'package:flutter/material.dart';

const double smallPadding = 5;
const double defaultPadding = 10;
const double bigPadding = 15;
const double extraPadding = 20;

Widget width(padding) => SizedBox(width: padding * 1.0);
Widget height(padding) => SizedBox(height: padding * 1.0);

Size screenSize(context) => MediaQuery.of(context).size;

Duration get fastAnimationDuration => const Duration(milliseconds: 150);
Duration get standardAnimationDuration => const Duration(milliseconds: 300);
Duration get slowAnimationDuration => const Duration(milliseconds: 700);

abstract class StaticColors {
  static Color red = Colors.red[300]!;
  static Color white = const Color(0xffffffff);
  static Color grey = const Color(0xffCCCED3);
  static Color black = const Color.fromARGB(255, 36, 36, 36);
  static Color blue = const Color(0xff46DEFF);
  static Color green = const Color(0xff6BD425);
}
