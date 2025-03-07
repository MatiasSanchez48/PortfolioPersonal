import 'package:flutter/material.dart';

extension ColorsSchemeX on ColorScheme {
  Color get grey => const Color.fromARGB(96, 30, 30, 30);

  Color get greyDark => const Color.fromARGB(180, 30, 30, 30);

  Color get surfaceOpacity30 => surface.withValues(alpha: .3);

  Color get onSurfaceOpacity50 => onSurface.withValues(alpha: .5);

  Color get onSurfaceOpacity60 => onSurface.withValues(alpha: .6);

  Color get onSurfaceOpacity20 => onSurface.withValues(alpha: .2);
}
