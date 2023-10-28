import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';

class ConferenceCard extends StatefulWidget {
  const ConferenceCard({Key? key}) : super(key: key);

  @override
  State<ConferenceCard> createState() => _ConferenceCardState();
}

class _ConferenceCardState extends State<ConferenceCard> {
  // List<Event> data = [];

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  // getData() async {
  //   var response = await FirebaseFirestore.instance.collection("Event").get();
  //   mapGetData(response);
  // }

  // mapGetData(QuerySnapshot<Map<String, dynamic>> response) {
  //   var listhome = response.docs
  //       .map((event) => Event(id: event.id, name: event["name"]))
  //       .toList();

  //   setState(() {
  //     data = listhome;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text("الفعاليات القريبة"),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 310,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed("/ConferenceDetails");
                },
                child: SizedBox(
                  width: 300,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0.1,
                    margin: const EdgeInsets.all(9),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW68TSQ2vZ05GehGXBz525yJRaseUmsZGrJ73kkaKEmODSB8_DGhvuL2P02BgyM6bqLMs&usqp=CAU',
                                  fit: BoxFit.fill,
                                  width: 300,
                                  height: 220,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      color: const Color.fromARGB(
                                          102, 235, 234, 234),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '10',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            ' DEC',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Strings.conferenceTitle.tr),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(Strings.city.tr),
                                    ],
                                  )
                                ],
                              ),
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
        )
      ],
    );
  }
}
