import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/shared/widget/button_widget.dart';
import 'package:tickets_app/shared/widget/logo_widget.dart';
import 'package:tickets_app/shared/widget/text_field_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
          children: <Widget>[
            logoWidget("assets/images/logo_hackspot.png"),
            const SizedBox(
              height: 30,
            ),
            textField(
                "Enter UserName", Icons.person_outline, false, emailController),
            const SizedBox(
              height: 20,
            ),
            textField(
                "Enter Password", Icons.lock_outline, true, passwordController),
            const SizedBox(
              height: 5,
            ),
            button(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text)
                  .then((value) {
                Get.offNamed("/MainScreen");
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have account ?",
                    style: TextStyle(color: Colors.black)),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/SignUpScreen");
                  },
                  child: const Text(
                    " Sign Up",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
