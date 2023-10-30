import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/theme/theme.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'package:tickets_app/features/signin/screens%20/signin_screen.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Theme
          Card(
            elevation: 0.1,
            child: ListTile(
              leading: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 101, 63, 237),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Theme.of(context).brightness == Brightness.dark
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  color: Colors.white,
                ),
              ),
              title: Text(Strings.theme.tr),
              // onTap: () {
              //   final themeController = Get.find<ThemeController>();
              //   themeController.toggleTheme();
              // },
            ),
          ),
          //Language
          Card(
            elevation: 0.1,
            child: ListTile(
              leading: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 96, 149, 242),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              title: Text(Strings.language.tr),
              onTap: () {
                String newLanguageCode =
                    LocalizationService.getCurrentLocale().languageCode == 'ar'
                        ? 'en'
                        : 'ar';
                LocalizationService.updateLanguage(newLanguageCode);
              },
            ),
          ),
          Card(
            elevation: 0.1,
            child: ListTile(
              leading: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 68, 161, 126),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.wallet,
                  color: Colors.white,
                ),
              ),
              title: Text(Strings.booking.tr),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 30),
          //logout
          Card(
            elevation: 0.1,
            child: ListTile(
              leading: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 213, 107, 248),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
              title: Text(Strings.lougout.tr),
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed Out");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
