import 'package:flutter/material.dart';

class DesignedTheme{

  Color primaryColor;
  Color primaryColorDark;
  Color accentColor;

  static Color primaryColorStatic;
  static Color primaryColorDarkStatic;
  static Color accentColorStatic;

  DesignedTheme(this.primaryColor, this.primaryColorDark, this.accentColor);

  void getPrimaryColor(Color primaryColor){
    this.primaryColor =primaryColor;
  }
  void getPrimaryColorDark(Color primaryColorDark){
    this.primaryColorDark = primaryColorDark;
  }
  void getAccentColor(Color accentColor){
    this.accentColor = accentColor;
  }

  static ThemeData themeSelected() {
    return ThemeData(
      primaryColor: primaryColorStatic,
      primaryColorDark: primaryColorDarkStatic,
      accentColor: accentColorStatic,
    );
  }
}
