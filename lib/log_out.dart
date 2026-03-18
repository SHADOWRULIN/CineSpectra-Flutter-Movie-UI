import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/onbording1.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen2.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  void switchToProfileScreenPage2() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen2()));
  }

  void switchToProfileScreenPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  void switchToOnbording1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Onbording1()));
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color: Color(0xffF6D776)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 152,
                        width: 353,
                        child: Padding(
                          padding: EdgeInsets.only(top: 80, left: 20),
                          child: Text("Hello, Fahaz!",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 39,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 670,
                  width: 343,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Color(0xffF9F5E9)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "LOG OUT",
                              style: TextStyle(fontSize: 24),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Are you sure you want to leave?",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 294,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff6DA4AA)),
                                  onPressed: switchToProfileScreenPage2,
                                  child: const Text(
                                    "Stay",
                                    style: TextStyle(
                                        color: Color(0xff000000), fontSize: 18),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 294,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffE3E3E3)),
                                  onPressed: switchToOnbording1,
                                  child: const Text(
                                    "Log out",
                                    style: TextStyle(
                                        color: Color(0xff000000), fontSize: 18),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: switchToProfileScreenPage2,
                          child: const Icon(
                            Icons.person_3_outlined,
                            color: Color(0xffF6D776),
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
