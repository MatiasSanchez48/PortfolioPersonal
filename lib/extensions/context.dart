import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BuildContetxX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  String? get fontFamily => GoogleFonts.pressStart2p().fontFamily;

}
