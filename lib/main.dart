import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/theme/theme.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'features/signin/screens /signin_screen.dart';
import 'shared/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.themeData,
        darkTheme: themeController.themeData,
        themeMode: themeController.isLightMode.value
            ? ThemeMode.light
            : ThemeMode.dark,
        home: const SignInScreen(),
        locale: Get.deviceLocale,
        translations: LocalizationService.getInstance(),
        getPages: appRoutes(),
      ),
    );
  }
}
