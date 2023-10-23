import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/features/event/widgets/ticket_widget.dart';
import 'package:tickets_app/shared/widget/button_widget.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Details"),
        backgroundColor: const Color(0xFFFF8C00),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              Text(Strings.eventTitle.tr),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Subtitle Subtitle Subtitle Subtitle Subtitle  Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle',
              ),
              const SizedBox(
                height: 20,
              ),
              button(context, "join", () {
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
