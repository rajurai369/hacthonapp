import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello world")),
      body: const Center(
        child: Text("Hi i am raju"),
      ),
    );
  }
}
