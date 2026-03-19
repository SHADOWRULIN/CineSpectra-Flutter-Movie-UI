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
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: Container(
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/CreateAccount/background(5).png",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color(0xffF6D776)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 152,
                          width: 353,
                          child: Padding(
                            padding: EdgeInsets.only(top: 80, left: 20),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.topLeft,
                              child: Text("Hello, Fahaz!",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 39,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: screenHeight * 0.85,
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          color: Color(0xffF9F5E9)),
                      child: Column(
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
                          buildProfileOption(Icons.favorite_outline,
                              "Favorites", switchToProfileScreenPage),
                          const SizedBox(
                            height: 10,
                          ),
                          buildProfileOption(
                              Icons.person_3_outlined, "My information", () {}),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              )),
                          buildProfileOption(Icons.settings_power_outlined,
                              "Log out", switchToLogOut)
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileOption(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
