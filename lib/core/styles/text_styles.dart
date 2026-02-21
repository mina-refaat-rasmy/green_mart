import 'package:flutter/widgets.dart';

abstract class TextStyles {
  static const TextStyle hadline = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle body = TextStyle(fontSize: 16);
  static const TextStyle button = TextStyle(fontSize: 14);
  static const TextStyle caption = TextStyle(fontSize: 12);
}
