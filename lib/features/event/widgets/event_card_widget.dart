import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 380,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed("/EventDetails");
            },
            child: SizedBox(
              width: 325,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0.5,
                margin: const EdgeInsets.all(9),
                child: Stack(
                  children: [
                    Image.network(
                      'https://via.placeholder.com/300?text=DITTO',
                      fit: BoxFit.fill,
                      width: 335,
                      height: 280,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: SizedBox(
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Strings.eventTitle.tr),
                            const Text('Subtitle')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
