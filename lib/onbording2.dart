import 'package:flutter/material.dart';
import 'package:cinespectra_flutter_movie_ui/create_acc.dart';
import 'package:cinespectra_flutter_movie_ui/login_page.dart';

class Onbording2 extends StatefulWidget {
  const Onbording2({super.key});

  @override
  State<Onbording2> createState() => _Onbording2State();
}

class _Onbording2State extends State<Onbording2> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void switchToCreateAccPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CreateAcc()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/Onbording2/background(3).png",
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Onbording2/VideoTape.png"),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Text(
                    "Do you have account?",
                    style: TextStyle(
                      color: Color(0xffF9F5E9),
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 343,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff374951)),
                    onPressed: switchToLoginPage,
                    child: const Text(
                      "Log In",
                      style: TextStyle(color: Color(0xffF9F5E9), fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 343,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff374951)),
                    onPressed: switchToCreateAccPage,
                    child: const Text(
                      "Create Account",
                      style: TextStyle(color: Color(0xffF9F5E9), fontSize: 18),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
