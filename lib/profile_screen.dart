import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/home.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen2.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void switchToProfileScreenPage2() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen2()));
  }

  void switchToHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
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
        child: Stack(
          children: [
            Row(
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
                                "Favorites",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/ProfileScreen/Line.png",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/ProfileScreen/movie.png",
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Joker",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "> Director: Todd Phillips",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> Starring: Joaquin Phoenix",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> This psychological thriller explores the origin of one of the most iconic villains in the comic book world, the Joker.",
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/ProfileScreen/Line.png",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/ProfileScreen/movie(2).png",
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Parasite",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "> Director: Bong Joon-ho",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> Starring: Song Kang-ho, Lee Sun-kyun",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> This South Korean thriller and black comedy won numerous awards, including the Oscar for Best Picture,",
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/ProfileScreen/Line.png",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/ProfileScreen/movie(3).png",
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Toy Story 4",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "> Director: Josh Cooley",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> Voices: Tom Hanks, Tim Allen",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> The final film in the popular Toy Story series, exploring the adventures of vibrant toys.",
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/ProfileScreen/Line.png",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/ProfileScreen/movie(4).png",
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "The Irishman",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "> Martin Scorsese",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> Starring: Robert De Niro, Al Pacino, JoePesci",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            "> This crime drama follows the life and career of a truck driver and mob hitman over several decades.",
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_outline,
                                color: Color(0xffF6D776),
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
          ],
        ),
      ),
    );
  }
}
