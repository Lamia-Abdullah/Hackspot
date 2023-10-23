import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/features/home/screens/main_screen.dart';
import 'package:tickets_app/shared/widget/button_widget.dart';
import 'package:tickets_app/shared/widget/logo_widget.dart';
import 'package:tickets_app/shared/widget/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF8C00),
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            logoWidget("assets/images/event.png"),
            const SizedBox(
              height: 30,
            ),
            textField("Enter UserName", Icons.person_outline, false,
                userNameController),
            const SizedBox(
              height: 20,
            ),
            textField(
                "Enter Email", Icons.person_outline, false, emailController),
            const SizedBox(
              height: 20,
            ),
            textField("Enter Password", Icons.lock_outlined, true,
                passwordController),
            const SizedBox(
              height: 20,
            ),
            button(context, "Sign Up", () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text)
                  .then((value) {
                Get.to(() => MainScreen());
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });
            })
          ],
        ),
      ),
    );
  }
}
