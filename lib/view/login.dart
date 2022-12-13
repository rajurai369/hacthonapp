import 'package:demo/util/appcolor.dart';
import 'package:demo/view/forgotpass.dart';
import 'package:demo/view/home.dart';
import 'package:demo/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/sizedbox.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool x = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your email",
                    fillColor: Appcolor.secondary,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            const Sbox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your password",
                  fillColor: Appcolor.secondary,
                  filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        x = !x;
                        print(x);
                        setState(() {});
                      },
                      icon: Icon(Icons.visibility_off)),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                obscureText: x,
              ),
            ),
            const Sbox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => Forgotpass());
                      },
                      child: const Text("forgot password?")),
                ],
              ),
            ),
            const Sbox(),
            MaterialButton(
              color: Appcolor.primary,
              onPressed: () {
                Get.to(() => HomeView());
              },
              child: const Text(
                "Login",
              ),
            ),
            const Sbox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => SignupView());
                      },
                      child: Text("I Have not an account")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
