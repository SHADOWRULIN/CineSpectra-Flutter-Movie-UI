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
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/SplashScreen/background(1).png",
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  "assets/SplashScreen/filmRolls.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Image.asset(
                  "assets/SplashScreen/cineSpectra.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Image.asset(
                  "assets/SplashScreen/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
