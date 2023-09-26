import 'package:flutter/material.dart';

extension MediaQueryDataExtension on MediaQueryData {
  bool get isMobile => size.width <= 480;
  bool get isTablet => size.width > 480 && size.width <= 1024;
}
