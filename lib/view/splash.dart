import 'package:demo/util/appcolor.dart';
import 'package:demo/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), (() {
      Get.to(() => LoginView());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(70.0),
              child: Text("Welcome To Hackathon",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
