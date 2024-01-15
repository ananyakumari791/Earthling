import 'package:flutter/material.dart';
import 'package:earthlings/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueEf => BoxDecoration(
        color: appTheme.blue100Ef,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen200,
      );
  static BoxDecoration get fillRedEf => BoxDecoration(
        color: appTheme.red200Ef,
      );
}

class BorderRadiusStyle {}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
