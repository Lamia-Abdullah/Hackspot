import 'package:flutter/material.dart';
import 'package:tickets_app/features/event/widgets/event_card_widget.dart';
import 'package:tickets_app/features/event/widgets/tabs_widget.dart';
import '../model/home_model.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  var data = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 232, 231, 231)),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TabChips(),
              SizedBox(
                height: 20,
              ),
              EventCard(),
            ]),
      ),
    );
  }
}
