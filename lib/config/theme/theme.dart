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
           //card
          cardColor: LightThemeColors.cardColor,
          // Bottom Navigation Bar
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: LightThemeColors.bottomNavigationBarColor,
          ),
          //Appbar
          appBarTheme: const AppBarTheme(
            color: LightThemeColors
                .appbarColor, 
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
          //card
          cardColor: DarkThemeColors.cardColor,
          // Bottom Navigation Bar
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: DarkThemeColors.bottomNavigationBarColor,
          ),
          appBarTheme: const AppBarTheme(
            color: DarkThemeColors
                .appbarColor, 
          ),
        );

  void toggleTheme() {
    isLightMode.value = !isLightMode.value;
  }
}
