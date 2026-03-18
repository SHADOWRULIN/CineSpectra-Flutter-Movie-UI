import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/home.dart';
import 'package:cinespectra_flutter_movie_ui/log_out.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({super.key});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  void switchToLogOut() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LogOut()));
  }

  void switchToHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  void switchToProfileScreenPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Account",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF9F5E9),
                                  elevation: 0),
                              onPressed: switchToProfileScreenPage,
                              icon: const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                              label: const Text(
                                "   Favorites                          >",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF9F5E9),
                                  elevation: 0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person_3_outlined,
                                color: Colors.black,
                              ),
                              label: const Text(
                                "   My information               >",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            "assets/ProfileScreen/Line.png",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF9F5E9),
                                  elevation: 0),
                              onPressed: switchToLogOut,
                              icon: const Icon(
                                Icons.settings_power_outlined,
                                color: Colors.black,
                              ),
                              label: const Text(
                                "   Log out                            >",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                        ],
                      ),
                    )),
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
                          onTap: switchToHome,
                          child: const Icon(
                            Icons.home_outlined,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
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
