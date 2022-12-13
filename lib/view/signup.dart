import 'package:demo/util/appcolor.dart';
import 'package:demo/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/sizedbox.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
                    labelText: "Enter your full name",
                    fillColor: Appcolor.secondary,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
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
            MaterialButton(
              color: Appcolor.primary,
              onPressed: () {},
              child: const Text(
                "Signin",
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
                        Get.to(() => LoginView());
                      },
                      child: Text("I already have an account")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
