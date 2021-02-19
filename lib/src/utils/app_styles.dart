import 'package:flutter/material.dart';

class AppStyles {
  /// For padding between screen with widget
  static double sizeStandarPadding = 20.0;

  ///For padding between widget (example: Text() inside RaiseButton())
  static double sizeSmallPadding = 10.0;

  static EdgeInsetsGeometry paddingScreenAll =
      EdgeInsets.all(sizeStandarPadding);

  static EdgeInsetsGeometry paddingScreenHorizontal =
      EdgeInsets.symmetric(horizontal: sizeStandarPadding);

  static EdgeInsetsGeometry paddingScreenVertical =
      EdgeInsets.symmetric(vertical: sizeStandarPadding);

  static EdgeInsetsGeometry paddingSmallAll = EdgeInsets.all(sizeSmallPadding);

  static EdgeInsetsGeometry paddingSmallHorizontal =
      EdgeInsets.symmetric(horizontal: sizeSmallPadding);

  static EdgeInsetsGeometry paddingSmallVertical =
      EdgeInsets.symmetric(vertical: sizeSmallPadding);
}
