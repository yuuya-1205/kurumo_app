import 'package:flutter/material.dart';

class Themes {
  static ThemeData get defaultTheme => ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
        primarySwatch: primaryColor,
        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: Colors.white,
              secondary: accentColor,
              onSecondary: Colors.white,
              shadow: primaryColor.shade300.withOpacity(0.25),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: grayColor.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          iconTheme: IconThemeData(color: grayColor[800], size: 20),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Themes.accentColor,
          elevation: 10,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            backgroundColor: accentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            shadowColor: accentColor.shade300.withOpacity(0.25),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(
          elevation: 4,
          shadowColor: accentColor.shade300.withOpacity(0.25),
          textStyle: TextStyle(
            color: grayColor.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardTheme: CardTheme(
          elevation: 20,
          shadowColor: grayColor.shade300.withOpacity(0.25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: primaryColor,
          unselectedLabelColor: grayColor.shade600,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
        ),
        dividerColor: Colors.transparent,
        shadowColor: grayColor.shade700,
      );

  static const MaterialColor primaryColor =
      MaterialColor(_primaryValue, <int, Color>{
    50: Color(0xFFECF7FB),
    100: Color(0xFFAAE2F4),
    200: Color(0xFF77D2EF),
    300: Color(0xFF44C2EA),
    400: Color(0xFF22B7E7),
    500: Color(_primaryValue),
    600: Color(0xFF1D8FB9),
    700: Color(0xFF1B7CA7),
    800: Color(0xFF196994),
    900: Color(0xFF16607F),
  });
  static const int _primaryValue = 0xFF1FA2CB;

  static const MaterialColor accentColor =
      MaterialColor(_accentColorValue, <int, Color>{
    50: Color(0xFFF9F0E2),
    100: Color(0xFFFFE5BE),
    200: Color(0xFFFFD699),
    300: Color(_accentColorValue),
  });
  static const int _accentColorValue = 0xFFFAB54D;

  static const MaterialColor grayColor = MaterialColor(_grayValue, <int, Color>{
    50: Color(0xFFF0F0F0),
    100: Color(0xFFE6E8EB),
    200: Color(0xFFD8DADD),
    300: Color(0xFFCBCDCF),
    400: Color(0xFFBCBEC0),
    500: Color(_grayValue),
    600: Color(0xFF98999B),
    700: Color(0xFF7E7F7F),
    800: Color(0xFF696A6A),
    900: Color(0xFF4E4E4E),
  });
  static const int _grayValue = 0xFFAEAFB1;
}
