import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/features/profile/widgets/setting_widget.dart';
import '../widgets/profile_hero_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.profile.tr),
        elevation: 0.3,
      ),
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHero(),
            Setting(),
          ],
        ),
      ),
    );
  }
}
