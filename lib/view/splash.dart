import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://images2.boardingschoolreview.com/photo/1122x864/1000/593/img-academy-oqxuxY.jpg")
          ],
        ),
      ),
    );
  }
}
