import 'package:flutter/material.dart';

import 'package:tickets_app/home/widgets/home_card.dart';
import 'package:tickets_app/profile/widgets/profile_hero.dart';

import '../model/home_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHero(),
              SizedBox(
                height: 20,
              ),
              HomeCard(),
              
            ]),
      ),
    );
  }
}
