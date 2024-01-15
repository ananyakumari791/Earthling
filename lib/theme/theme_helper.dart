import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.lightGreen200,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 26.fSize,
          fontFamily: 'Oldenburg',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueEf
  Color get blue100Ef => Color(0XEFB9D8EF);

  // Blue
  Color get blue800 => Color(0XFF215CB6);

  // BlueGray
  Color get blueGray200 => Color(0XFFABC3B8);

  // DeepPurpleEf
  Color get deepPurple700Ef => Color(0XEF3C25C7);

  // IndigoEf
  Color get indigo600Ef => Color(0XEF2E34C3);

  // Indigo
  Color get indigo900 => Color(0XFF261B6E);

  // LightGreen
  Color get lightGreen200 => Color(0XFFC5E9B4);
  Color get lightGreen300 => Color(0XFFA1CD8C);
  Color get lightGreen400 => Color(0XFF94CE79);
  Color get lightGreenA700 => Color(0XFF3FC501);

  // Lime
  Color get lime400 => Color(0XFFD8DB56);
  Color get lime900 => Color(0XFF975E3D);

  // Pink
  Color get pink600 => Color(0XFFCD386E);

  // Purple
  Color get purple800 => Color(0XFF622096);

  // RedEf
  Color get red200Ef => Color(0XEFF0A9A9);

  // Red
  Color get red300 => Color(0XFFDB8656);
  Color get red400 => Color(0XFFF35454);
  Color get red40001 => Color(0XFFDB5E56);
  Color get redA700 => Color(0XFFE61111);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
