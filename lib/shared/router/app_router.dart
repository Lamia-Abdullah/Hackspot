
import 'package:get/get.dart';
import 'package:tickets_app/features/event/screens/main_screen.dart';
import 'package:tickets_app/features/signin/screens%20/signup_screen.dart';

import '../../features/event/screens/home_screen.dart';
import '../../features/event/widgets/conference_details_widget.dart';
import '../../features/event/widgets/ticket_widget.dart';

appRoutes() => [
GetPage(
  name: "/MainScreen",
  page: () => MainScreen()
   ),

  GetPage(
    name: "/SignUpScreen",
    page: () => const SignUpScreen()
     ),

  GetPage(
    name: "/Home", 
    page: () => const Home()
   ),

  GetPage(
    name: "/ConferenceDetails", 
    page: () => const ConferenceDetails()
    ),
    
  GetPage(
    name: "/Tickets",
    page: () => const Tickets()
     ),
     
];
