import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';

class AllCard extends StatelessWidget {
  const AllCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isEnglish = Get.locale?.languageCode == 'en';

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(Strings.all.tr),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView(
            children: [
              Card(
                elevation: 0.1,
                child: Stack(
                  children: [
                    ListTile(
                      leading: SizedBox(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://www.khaberni.com/uploads/news_model/2020/08/main_image5f3280f726bb4.png',
                              fit: BoxFit.fill,
                              width: 300,
                              height: 220,
                            )),
                      ),
                      title: Text(Strings.hackathonTitle.tr),
                      subtitle: Text(Strings.city.tr),
                      onTap: () {},
                    ),
                    Positioned(
                      top: 10,
                      right: isEnglish ? 10 : null, // Move to right for English
                      left: isEnglish ? null : 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 80,
                          height: 40,
                          color: const Color.fromARGB(97, 153, 160, 222),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.hackathon.tr,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0.1,
                child: Stack(
                  children: [
                    ListTile(
                      leading: SizedBox(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW68TSQ2vZ05GehGXBz525yJRaseUmsZGrJ73kkaKEmODSB8_DGhvuL2P02BgyM6bqLMs&usqp=CAU',
                            fit: BoxFit.fill,
                            width: 300,
                            height: 220,
                          ),
                        ),
                      ),
                      title: Text(Strings.conferenceTitle.tr),
                      subtitle: Text(Strings.city.tr),
                      onTap: () {},
                    ),
                    Positioned(
                      top: 10,
                      right: isEnglish ? 10 : null,
                      left: isEnglish ? null : 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 80,
                          height: 40,
                          color: const Color.fromARGB(97, 153, 160, 222),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              Strings.conference.tr,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
