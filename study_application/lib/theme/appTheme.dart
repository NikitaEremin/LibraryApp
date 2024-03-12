import 'package:flutter/material.dart';

abstract class AppColors {
  static const mainDarkBlue = Color(0xFF032541);
  static const mainLittleBlue = Color(0xFF01B4E4);
}

class appTextStyles {
  static const title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const author = TextStyle(
    color: Colors.grey,
    fontSize: 14,
  );
}

class Buttons {
  static final secondaryButtons = TextButton.styleFrom(
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    foregroundColor: AppColors.mainLittleBlue,
  );

  static final primaryButtons = TextButton.styleFrom(
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    fixedSize: const Size(115, 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: AppColors.mainLittleBlue,
    foregroundColor: Colors.white,
  );
}

abstract class appTheme {
  static final themeData = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 16, color: Colors.black),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 24),
      centerTitle: true,
      color: AppColors.mainDarkBlue,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.mainDarkBlue,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.white),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.mainDarkBlue),
    scaffoldBackgroundColor: Colors.grey[100],
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}

class Covers {
  static const prestuplenieCover = 'images/PiN.jpg';
  static const codeDaVinci = 'images/CodeDaVinci.jpg';
  static const it = 'images/It.jpg';
}
