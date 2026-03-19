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
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/CreateAccount/background(5).png",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      constraints:
                          BoxConstraints(minHeight: screenHeight * 0.85),
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
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
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            tile(
                                "assets/ProfileScreen/movie.png",
                                "Joker",
                                "Todd Phillips",
                                "Joaquin Phoenix",
                                "This psychological thriller explores the origin of one of the most iconic villains in the comic book world, the Joker."),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            tile(
                                "assets/ProfileScreen/movie(2).png",
                                "Parasite",
                                "Bong Joon-ho",
                                "Song Kang-ho, Lee Sun-kyun",
                                "This South Korean thriller and black comedy won numerous awards, including the Oscar for Best Picture."),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            tile(
                                "assets/ProfileScreen/movie(3).png",
                                "Toy Story 4",
                                "Josh Cooley",
                                "Tom Hanks, Tim Allen",
                                "The final film in the popular Toy Story series, exploring the adventures of vibrant toys."),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            tile(
                                "assets/ProfileScreen/movie(4).png",
                                "The Irishman",
                                "Martin Scorsese",
                                "Robert De Niro, Al Pacino, JoePesci",
                                "This crime drama follows the life and career of a truck driver and mob hitman over several decades.")
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget tile(String img, String title, String director, String starring,
      String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(img),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "> Director: $director",
                style: TextStyle(fontSize: 13),
              ),
              Text(
                "> Starring: $starring",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 8),
              Text(
                "> $description",
                style: TextStyle(fontSize: 13),
                softWrap: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
