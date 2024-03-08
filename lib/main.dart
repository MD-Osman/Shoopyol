import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proje_store/mainHome.dart';
import 'package:proje_store/ozellikler/splash/presentataion/splash_body.dart';

void main() {
  runApp(const Shoopyol());
}

class Shoopyol extends StatelessWidget {
  const Shoopyol({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const MainHome());
      },
      home: const SplashBody(),
    );
  }
}
