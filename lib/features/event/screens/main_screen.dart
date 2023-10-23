import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/controller/navigation_bar.dart';
import 'package:tickets_app/features/hackathon/screens/hackathon_screen.dart';
import 'package:tickets_app/features/event/screens/event_screen.dart';
import '../../profile/screens/profile_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final screens = [
    const Profile(),
    const Event(),
    const Hackathon(),
  ];

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());

    return Scaffold(
        body: Obx(
          () => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              bottomNavigationController.changePage(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: Strings.profile.tr,
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.view_comfy_rounded),
                  label: Strings.events.tr,
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.auto_graph_outlined),
                  label: Strings.hackathon.tr,
                  backgroundColor: Colors.white),
            ],
          ),
        ));
  }
}