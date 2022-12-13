import 'package:demo/util/appcolor.dart';
import 'package:flutter/material.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});

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
          MaterialButton(
            color: Appcolor.primary,
            onPressed: () {},
            child: Text("Proceed"),
          )
        ],
      )),
    ));
  }
}
