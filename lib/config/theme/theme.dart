import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/theme/dark_theme_colors.dart';
import 'package:tickets_app/config/theme/light_theme_colors.dart';

class ThemeController extends GetxController {
  RxBool isLightMode = true.obs;

  ThemeData get themeData => isLightMode.value
      ? ThemeData(
          primaryColor: LightThemeColors.primaryColor,
          colorScheme: ColorScheme.fromSwatch(
            accentColor: LightThemeColors.primaryColor,
            backgroundColor: LightThemeColors.secondaryColor,
            brightness: Brightness.light,
          ).copyWith(
            secondary: LightThemeColors.primaryColor,
          ),
          cardColor: LightThemeColors.cardColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: LightThemeColors.bottomNavigationBarColor,
          ),
          //Appbar
          appBarTheme: const AppBarTheme(
            color: LightThemeColors
                .appbarColor, // Set the app bar color for the dark theme
          ),
        )
      : ThemeData(
          primaryColor: DarkThemeColors.primaryColor,
          colorScheme: ColorScheme.fromSwatch(
            accentColor: DarkThemeColors.primaryColor,
            backgroundColor: DarkThemeColors.secondaryColor,
            brightness: Brightness.dark,
          ).copyWith(
            secondary: DarkThemeColors.secondaryColor,
          ),
          cardColor: DarkThemeColors.cardColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: DarkThemeColors.bottomNavigationBarColor,
          ),
          appBarTheme: const AppBarTheme(
            color: DarkThemeColors
                .appbarColor, // Set the app bar color for the dark theme
          ),
        );

  void toggleTheme() {
    isLightMode.value = !isLightMode.value;
  }
}
