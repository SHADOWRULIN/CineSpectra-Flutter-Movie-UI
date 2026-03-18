import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _TestState();
}

class _TestState extends State<Home> {
  void switchToProfileScreenPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  void switchToProfileScreenPage2() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/CreateAccount/background(5).png",
                ),
                fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 353,
                  height: 152,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color: Color(0xffF6D776)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/SplashScreen/logo.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Recommended"),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 70,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff5A7079),
                                  ),
                                  child: const Center(
                                    child: Text("Schedule"),
                                  ))),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Coming Soon"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/Home/1.png"),
                    Image.asset("assets/Home/2.png"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/Home/3.png"),
                    Image.asset("assets/Home/4.png"),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 92,
                    color: const Color(0xff374951),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: switchToProfileScreenPage,
                          child: const Icon(
                            Icons.favorite_outline,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.home_outlined,
                            color: Color(0xffF6D776),
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: switchToProfileScreenPage2,
                          child: const Icon(
                            Icons.person_3_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
