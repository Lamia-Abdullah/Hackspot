import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tickets_app/config/theme/theme.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'package:tickets_app/features/signin/screens%20/signin_screen.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = ThemeController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Theme
          Card(
            color: const Color.fromARGB(255, 181, 163, 246),
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
              title: const Text('Change Theme'),
              onTap: () {
               
              },
            ),
          ),
          //Language
          Card(
            color: const Color.fromARGB(255, 197, 216, 250),
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
              title: const Text('Change Language'),
              onTap: () {
                String newLanguageCode =
                    LocalizationService.getCurrentLocale().languageCode == 'ar'
                        ? 'en'
                        : 'ar';
                LocalizationService.updateLanguage(newLanguageCode);
              },
            ),
          ),
          const SizedBox(height: 30),
          //logout
          Card(
            color: const Color.fromARGB(255, 219, 191, 237),
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
              title: const Text('Logout'),
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
