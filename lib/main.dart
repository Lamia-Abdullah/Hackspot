import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'home/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      locale: Get.deviceLocale,
      translations: LocalizationService.getInstance(),
      getPages: [
        GetPage(name: "/Home", page: () => const Home()),
      ],
    );
  }
}
