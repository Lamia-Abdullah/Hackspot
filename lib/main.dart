import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:tickets_app/config/theme/theme.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'features/signin/screens /signin_screen.dart';
import 'shared/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://a17e97379332ff7a3f4c228ece6df080@o4506568180432896.ingest.sentry.io/4506568498937856';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 0.1;
      options.attachScreenshot = true;
    },
    appRunner: () => runApp(const SentryScreenshotWidget(child: MyApp())),
  );

  // or define SENTRY_DSN via Dart environment variable (--dart-define)
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
