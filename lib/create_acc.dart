import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/login_page.dart';
import 'package:cinespectra_flutter_movie_ui/profile_screen.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _TestState();
}

class _TestState extends State<CreateAcc> {
  void switchToProfileScreenPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  bool _isChecked = false;

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
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/CreateAccount/text(3).png",
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "E-mail Addrese",
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
                      style: const TextStyle(
                          color: Color(0xffF9F5E9), fontSize: 18),
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
                      style: const TextStyle(
                          color: Color(0xffF4C331), fontSize: 18),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Confirm Password",
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
                        hintText: "Confirm your password",
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
                      style: const TextStyle(
                          color: Color(0xffF4C331), fontSize: 18),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: const Color(0xffF4C331),
                      ),
                      const Text(
                        "I agree to the ",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w200,
                            color: Color(0xffF4C331),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffF4C331)),
                      ),
                    ],
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
                                  "Create Account",
                                  style: TextStyle(
                                      color: Color(0xff000000), fontSize: 18),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
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
                            onTap: switchToLoginPage,
                            child: const Text(
                              "Back to login page",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  color: Color(0xffF4C331),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xffF4C331)),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
