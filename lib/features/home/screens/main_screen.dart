import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/controller/navigation_bar.dart';
import 'package:tickets_app/features/home/screens/home_view.dart';
import '../../profile/screens/profile_view.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final screens = [
    const Profile(),
    const Home(),
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
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              bottomNavigationController.changePage(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "profile",
                  backgroundColor: Colors.grey),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "home",
                  backgroundColor: Colors.grey),
            ],
          ),
        ));
  }
}
