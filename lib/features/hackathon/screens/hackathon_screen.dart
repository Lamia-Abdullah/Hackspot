import 'package:flutter/material.dart';

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
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // TabChips(),
              SizedBox(
                height: 20,
              ),
              HackathonCard(),
            ]),
      ),
    );
  }
}
