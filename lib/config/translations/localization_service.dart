import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'arabic/arabic.dart';
import 'english/english_translation.dart';

class LocalizationService extends Translations {
  LocalizationService._();
  static LocalizationService? _instance;

  static LocalizationService getInstance() {
    _instance ??= LocalizationService._();
    return _instance!;
  }

  static Locale defaultLanguage = supportedLanguages['en']!;
  static Map<String, Locale> supportedLanguages = {
    'en': const Locale('en', 'US'),
    'ar': const Locale('ar', 'AR'),
  };

  static Map<String, TextStyle> supportedLanguagesFontsFamilies = {
    'en': const TextStyle(fontFamily: 'Poppins'),
    'ar': const TextStyle(fontFamily: 'Cairo'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': us,
        'ar_AR': ar,
      };

  static isLanguageSupported(String languageCode) =>
      supportedLanguages.keys.contains(languageCode);

  static Locale getCurrentLocale() => Get.locale ?? defaultLanguage;

  static updateLanguage(String languageCode) {
    if (!isLanguageSupported(languageCode)) return;

    final locale = supportedLanguages[languageCode];
    if (locale != null) {
      Get.updateLocale(locale);
    }
  }
}
