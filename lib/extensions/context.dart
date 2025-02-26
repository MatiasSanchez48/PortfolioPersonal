import 'package:flutter/material.dart';

extension BuildContetxX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
