import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/features/home/widgets/ticket_widget.dart';
import 'package:tickets_app/shared/widget/button_widget.dart';

class ConferenceDetails extends StatelessWidget {
  const ConferenceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.conferenceDetails.tr),
        elevation: 0.3,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25,
          ),
          child: Column(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW68TSQ2vZ05GehGXBz525yJRaseUmsZGrJ73kkaKEmODSB8_DGhvuL2P02BgyM6bqLMs&usqp=CAU',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 290,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(Strings.conferenceTitle.tr),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    const Text(
                      'Subtitle Subtitle Subtitle Subtitle Subtitle  Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: const Divider(
                        color: Colors.black,
                        thickness: 0.2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.location_on,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(Strings.city.tr),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.date_range_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("11/12/2023"),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              button(context, Strings.join.tr, () {
                Get.dialog(
                  const Tickets(),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
