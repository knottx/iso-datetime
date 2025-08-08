import 'package:flutter/material.dart';

class AppTheme {
  final TextTheme textTheme;

  const AppTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003d50),
      surfaceTint: Color(0xff29657d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff12556c),
      onPrimaryContainer: Color(0xff90c8e3),
      secondary: Color(0xff4d616b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e6f2),
      onSecondaryContainer: Color(0xff536772),
      tertiary: Color(0xff492c57),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff61436f),
      onTertiaryContainer: Color(0xffd9b3e7),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8f9fb),
      onSurface: Color(0xff191c1e),
      onSurfaceVariant: Color(0xff40484c),
      outline: Color(0xff70787d),
      outlineVariant: Color(0xffc0c8cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3132),
      inversePrimary: Color(0xff96cee9),
      primaryFixed: Color(0xffbde9ff),
      onPrimaryFixed: Color(0xff001f2a),
      primaryFixedDim: Color(0xff96cee9),
      onPrimaryFixedVariant: Color(0xff014d64),
      secondaryFixed: Color(0xffd0e6f2),
      onSecondaryFixed: Color(0xff081e27),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff364a53),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff2a0f38),
      tertiaryFixedDim: Color(0xffdfb9ed),
      onTertiaryFixedVariant: Color(0xff593b67),
      surfaceDim: Color(0xffd9dadc),
      surfaceBright: Color(0xfff8f9fb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f4f6),
      surfaceContainer: Color(0xffedeef0),
      surfaceContainerHigh: Color(0xffe7e8ea),
      surfaceContainerHighest: Color(0xffe1e2e4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003b4e),
      surfaceTint: Color(0xff29657d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff12556c),
      onPrimaryContainer: Color(0xffd8f1ff),
      secondary: Color(0xff253942),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5c707a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff472b55),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff61436f),
      onTertiaryContainer: Color(0xfffbe7ff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9fb),
      onSurface: Color(0xff0f1213),
      onSurfaceVariant: Color(0xff30373b),
      outline: Color(0xff4c5458),
      outlineVariant: Color(0xff666e73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3132),
      inversePrimary: Color(0xff96cee9),
      primaryFixed: Color(0xff3a748c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1c5b73),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5c707a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff435862),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff81618f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff684976),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c7c8),
      surfaceBright: Color(0xfff8f9fb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f4f6),
      surfaceContainer: Color(0xffe7e8ea),
      surfaceContainerHigh: Color(0xffdbdddf),
      surfaceContainerHighest: Color(0xffd0d2d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003040),
      surfaceTint: Color(0xff29657d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff074f66),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1b2f38),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff384c56),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3c204a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5b3e69),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9fb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff262d31),
      outlineVariant: Color(0xff434a4f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3132),
      inversePrimary: Color(0xff96cee9),
      primaryFixed: Color(0xff074f66),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003749),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff384c56),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff21353f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5b3e69),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff432751),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7b9bb),
      surfaceBright: Color(0xfff8f9fb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f1f3),
      surfaceContainer: Color(0xffe1e2e4),
      surfaceContainerHigh: Color(0xffd3d4d6),
      surfaceContainerHighest: Color(0xffc5c7c8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff96cee9),
      surfaceTint: Color(0xff96cee9),
      onPrimary: Color(0xff003546),
      primaryContainer: Color(0xff12556c),
      onPrimaryContainer: Color(0xff90c8e3),
      secondary: Color(0xffb4cad5),
      onSecondary: Color(0xff1f333c),
      secondaryContainer: Color(0xff384c56),
      onSecondaryContainer: Color(0xffa6bcc7),
      tertiary: Color(0xffdfb9ed),
      onTertiary: Color(0xff41254f),
      tertiaryContainer: Color(0xff61436f),
      onTertiaryContainer: Color(0xffd9b3e7),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111415),
      onSurface: Color(0xffe1e2e4),
      onSurfaceVariant: Color(0xffc0c8cd),
      outline: Color(0xff8a9297),
      outlineVariant: Color(0xff40484c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e4),
      inversePrimary: Color(0xff29657d),
      primaryFixed: Color(0xffbde9ff),
      onPrimaryFixed: Color(0xff001f2a),
      primaryFixedDim: Color(0xff96cee9),
      onPrimaryFixedVariant: Color(0xff014d64),
      secondaryFixed: Color(0xffd0e6f2),
      onSecondaryFixed: Color(0xff081e27),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff364a53),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff2a0f38),
      tertiaryFixedDim: Color(0xffdfb9ed),
      onTertiaryFixedVariant: Color(0xff593b67),
      surfaceDim: Color(0xff111415),
      surfaceBright: Color(0xff37393b),
      surfaceContainerLowest: Color(0xff0c0f10),
      surfaceContainerLow: Color(0xff191c1e),
      surfaceContainer: Color(0xff1d2022),
      surfaceContainerHigh: Color(0xff282a2c),
      surfaceContainerHighest: Color(0xff323537),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffade4ff),
      surfaceTint: Color(0xff96cee9),
      onPrimary: Color(0xff002937),
      primaryContainer: Color(0xff6098b1),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcae0ec),
      onSecondary: Color(0xff142831),
      secondaryContainer: Color(0xff7f949f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff3d1ff),
      onTertiary: Color(0xff351a43),
      tertiaryContainer: Color(0xffa784b5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd6dde2),
      outline: Color(0xffabb3b8),
      outlineVariant: Color(0xff8a9196),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e4),
      inversePrimary: Color(0xff044e65),
      primaryFixed: Color(0xffbde9ff),
      onPrimaryFixed: Color(0xff00131c),
      primaryFixedDim: Color(0xff96cee9),
      onPrimaryFixedVariant: Color(0xff003b4e),
      secondaryFixed: Color(0xffd0e6f2),
      onSecondaryFixed: Color(0xff00131c),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff253942),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff1f042d),
      tertiaryFixedDim: Color(0xffdfb9ed),
      onTertiaryFixedVariant: Color(0xff472b55),
      surfaceDim: Color(0xff111415),
      surfaceBright: Color(0xff424547),
      surfaceContainerLowest: Color(0xff050809),
      surfaceContainerLow: Color(0xff1b1e20),
      surfaceContainer: Color(0xff25282a),
      surfaceContainerHigh: Color(0xff303335),
      surfaceContainerHighest: Color(0xff3b3e40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdef3ff),
      surfaceTint: Color(0xff96cee9),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff92cae5),
      onPrimaryContainer: Color(0xff000d14),
      secondary: Color(0xffdef3ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb0c6d1),
      onSecondaryContainer: Color(0xff000d14),
      tertiary: Color(0xfffdeaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdbb6e9),
      onTertiaryContainer: Color(0xff180027),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff111415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe9f1f6),
      outlineVariant: Color(0xffbcc4c9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e4),
      inversePrimary: Color(0xff044e65),
      primaryFixed: Color(0xffbde9ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff96cee9),
      onPrimaryFixedVariant: Color(0xff00131c),
      secondaryFixed: Color(0xffd0e6f2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb4cad5),
      onSecondaryFixedVariant: Color(0xff00131c),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdfb9ed),
      onTertiaryFixedVariant: Color(0xff1f042d),
      surfaceDim: Color(0xff111415),
      surfaceBright: Color(0xff4e5052),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d2022),
      surfaceContainer: Color(0xff2e3132),
      surfaceContainerHigh: Color(0xff393c3d),
      surfaceContainerHighest: Color(0xff444749),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
