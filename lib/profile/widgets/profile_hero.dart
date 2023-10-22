import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import '../../../config/translations/localization_service.dart';

class ProfileHero extends StatelessWidget {
  const ProfileHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(167, 124, 131, 240),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 30,
            right: 16,
            left: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE2C2),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/person.png',
                    // height: double.infinity,
                  ),
                ),
                const SizedBox(width: 9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      Strings.yourName.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),

                // Theme Button
                InkWell(
                  onTap: () {
                  
                  },
                  child: Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 143, 115, 244),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // Language Button
                InkWell(
                  onTap: () {
                    String newLanguageCode =
                        LocalizationService.getCurrentLocale().languageCode ==
                                'ar'
                            ? 'en'
                            : 'ar';
                    LocalizationService.updateLanguage(newLanguageCode);
                  },
                  child: Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 143, 115, 244),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
