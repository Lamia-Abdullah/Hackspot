import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/enum.dart';
import 'package:tickets_app/controller/navigation_bar.dart';
import 'package:tickets_app/features/Search/screens/search_screen.dart';
import 'package:tickets_app/features/home/screens/home_screen.dart';
import '../../profile/screens/profile_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final screens = [
    const Profile(),
    const Home(),
    const Search(),
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
                  icon: const Icon(Icons.auto_graph_outlined),
                  label: Strings.home.tr,
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  label: Strings.search.tr,
                  backgroundColor: Colors.white),
            ],
          ),
        ));
  }
}
