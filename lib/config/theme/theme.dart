import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/theme/dark_theme_colors.dart';
import 'package:tickets_app/config/theme/light_theme_colors.dart';

class ThemeController extends GetxController {
  RxBool isLightMode = true.obs;
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;

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
            color: LightThemeColors.appbarColor,
          ),
          // app background color
          scaffoldBackgroundColor: LightThemeColors.scaffoldBackgroundColor,
          // divider color
          dividerColor: LightThemeColors.dividerColor,
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
          // app background color
          scaffoldBackgroundColor: DarkThemeColors.scaffoldBackgroundColor,
          //card
          cardColor: DarkThemeColors.cardColor,
          // Bottom Navigation Bar
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: DarkThemeColors.bottomNavigationBarColor,
          ),
          appBarTheme: const AppBarTheme(
            color: DarkThemeColors.appbarColor,
          ),
          // divider color
          dividerColor: DarkThemeColors.dividerColor,
        );

  void toggleTheme() {
    isLightMode.value = !isLightMode.value;
    themeMode.value = isLightMode.value ? ThemeMode.light : ThemeMode.dark;
  }

  void updateThemeMode() {
    final Brightness systemBrightness =
        SchedulerBinding.instance.window.platformBrightness ?? Brightness.light;
    isLightMode.value = systemBrightness == Brightness.light;
    themeMode.value = isLightMode.value ? ThemeMode.light : ThemeMode.dark;
  }
}
