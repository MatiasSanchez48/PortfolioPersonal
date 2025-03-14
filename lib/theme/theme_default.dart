import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Theme Default App
final themeDefault = ThemeData(
  fontFamily: GoogleFonts.pressStart2p().fontFamily,
  colorScheme: _colorSchemeDefault,
  useMaterial3: true,
);

/// ColorScheme Default App
const _colorSchemeDefault = ColorScheme.light(
  primary: Color(0xFFFD9A00),
  onPrimary: Color(0xFFAE8A68),
  primaryContainer: Color(0xFFFFF8EE),
  secondary: Color(0xFF00D3B4),
  onSecondary: Color(0xFF009A80),
  tertiary: Color(0xFFF2F2F2),
  onTertiary: Color(0xFF1E1E1E),
  error: Color(0xFFFF4444),
  surfaceTint: Color(0xFFFFFFFF),
  shadow: Color(0xFF1E1E1E),
);

/// Theme Dark Default App
final themeDark = ThemeData(
  fontFamily: GoogleFonts.pressStart2p().fontFamily,
  colorScheme: _colorSchemeDark,
  useMaterial3: true,
);

/// Color Scheme Dark App
const _colorSchemeDark = ColorScheme.dark(
  primary: Color(0xFFFFA726),
  onPrimary: Color(0xFFF5E0C3),
  primaryContainer: Color(0xFF4E342E),
  secondary: Color(0xFF26A69A),
  onSecondary: Color(0xFF80CBC4),
  tertiary: Color.fromARGB(36, 242, 242, 242),
  onTertiary: Color(0xFFFFFFFF),
  error: Color(0xFFEF5350),
  surfaceTint: Color(0xFF1E1E1E),
  shadow: Color(0xFFFFFFFF),
);
