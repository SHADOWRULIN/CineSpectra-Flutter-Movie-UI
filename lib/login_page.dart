import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/create_acc.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void switchToCreateAccPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CreateAcc()));
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
                  "assets/LoginPage/background(4).png",
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/LoginPage/text(2).png",
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "E-mail Address",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 343,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your e-mail",
                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w100),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(100)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(100))),
                  style:
                      const TextStyle(color: Color(0xffF9F5E9), fontSize: 18),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 343,
                height: 60,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w100),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(100)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/LoginPage/Eye-slash.png'),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  style:
                      const TextStyle(color: Color(0xffF4C331), fontSize: 18),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Forget your password?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Color(0xffF9F5E9)),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 5, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 343,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF4C331)),
                            onPressed: switchToProfileScreenPage,
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 18),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/LoginPage/OR.png",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/LoginPage/Google.png",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: switchToCreateAccPage,
                        child: const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: Color(0xff374951),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
