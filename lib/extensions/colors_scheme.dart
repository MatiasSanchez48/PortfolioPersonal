import 'package:flutter/material.dart';

extension ColorsSchemeX on ColorScheme {
  Color get surfaceOpacity30 => surface.withValues(alpha: .3);

  Color get onSurfaceOpacity20 => onSurface.withValues(alpha: .2);

  Color get onSurfaceOpacity50 => onSurface.withValues(alpha: .5);

  Color get onSurfaceOpacity60 => onSurface.withValues(alpha: .6);
}
