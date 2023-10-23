import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import '../widgets/profile_hero.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 232, 231, 231)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHero(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    // Theme
                    Card(
                      color: const Color.fromARGB(255, 164, 141, 246),
                      child: ListTile(
                        leading: Container(
                          height: 39,
                          width: 39,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 101, 63, 237),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Change Theme'),
                        onTap: () {},
                      ),
                    ),
                    //language
                    Card(
                      color: const Color.fromARGB(255, 174, 201, 248),
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
                            )),
                        title: const Text('Change Language'),
                        onTap: () {
                          String newLanguageCode =
                              LocalizationService.getCurrentLocale()
                                          .languageCode ==
                                      'ar'
                                  ? 'en'
                                  : 'ar';
                          LocalizationService.updateLanguage(newLanguageCode);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
