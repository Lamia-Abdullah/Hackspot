import 'package:flutter/material.dart';

import 'package:tickets_app/features/event/widgets/event_card_widget.dart';
import 'package:tickets_app/features/event/widgets/tabs_widget.dart';
import 'package:tickets_app/features/hackathon/widgets/hackathon_card.dart';



class Hackathon extends StatefulWidget {
  const Hackathon({Key? key}) : super(key: key);

  @override
  State<Hackathon> createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {


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
               HackathonCard(),
             
            ]),
      ),
    );
  }
}
