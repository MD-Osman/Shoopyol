import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proje_store/mainHome.dart';
import 'dart:async';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation = Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainHome())));
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF241536),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: fadingAnimation!,
                  builder: (context, _) => Opacity(
                    opacity: fadingAnimation?.value,
                    child: const Text(
                      "Shoop",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        color: Color(
                          0xFFA953AE,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: fadingAnimation!,
                  builder: (context, _) => Opacity(
                    opacity: fadingAnimation?.value,
                    child: const Text(
                      "yol",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset("images/splashview11.png"),
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    //this code making invinity loop error !
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => MainHome(),
        //   ),
        // );
        // Transition.fade;
        Get.to(() => const MainHome(), transition: Transition.fade);
      },
    );
  }
}
