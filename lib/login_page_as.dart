import 'package:flutter/material.dart';
import 'package:sampleprojects/signup_page.dart';

import 'home_screen.dart';

class LoginPageAs extends StatefulWidget {
  @override
  State<LoginPageAs> createState() => _LoginPageAsState();
}

class _LoginPageAsState extends State<LoginPageAs> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text("Welcome to Dark World",
            style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        height: 800,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/Images/pexels-henry-&-co-1939485.jpg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/Icons/hacker.png",
                    height: 250,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: "Email ID",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Your Email.",
                      prefixIcon: Icon(Icons.person_pin),
                    ),
                    validator: (uname) {
                      if (uname!.isEmpty ||
                          !uname.contains("@") ||
                          !uname.contains(".")) {
                        return "Enter a valid Email ID";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: "Your Password.",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpass) {
                                  showpass = false;
                                } else {
                                  showpass = true;
                                }
                              });
                            },
                            icon: Icon(showpass == true
                                ? Icons.visibility_off
                                : Icons.visibility))),
                    obscuringCharacter: '*',
                    obscureText: showpass,
                    validator: (pswd) {
                      if (pswd!.isEmpty || pswd.length < 6) {
                        return "Enter a valid Password.";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    child: const Text(
                      "  Don't have an account? Sign Up ",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
