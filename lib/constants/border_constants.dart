import 'package:flutter/material.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();

  BorderConstants._init();

  final radiusAllCircular =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
}
