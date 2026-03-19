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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/CreateAccount/background(5).png",
                ),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
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
                        const Text("Recommended"),
                        Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff5A7079),
                            ),
                            child: const Center(
                              child: Text("Schedule"),
                            )),
                        const Text("Coming Soon"),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      buildMovieRow("assets/Home/1.png", "assets/Home/2.png"),
                      const SizedBox(height: 20),
                      buildMovieRow("assets/Home/3.png", "assets/Home/4.png")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMovieRow(String img1, String img2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(img1, width: 150, fit: BoxFit.cover),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(img2, width: 150, fit: BoxFit.cover),
        )
      ],
    );
  }
}
