import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/onbording1.dart';

String? name;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    setState(() {
      name = "Cinema App";
    });
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Onbording1(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/SplashScreen/background(1).png",
                ),
                fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/SplashScreen/filmRolls.png"),
                  Image.asset("assets/SplashScreen/cineSpectra.png"),
                  Image.asset("assets/SplashScreen/logo.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
