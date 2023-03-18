import 'package:flutter/material.dart';

import 'login_page_as.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  bool showpass1 = true;
  var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title:
            const Text("Sign Up here.", style: TextStyle(color: Colors.black)),
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
                        prefixIcon: Icon(Icons.person_pin)),
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
                        labelText: "New password",
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: "Your new password.",
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
                      confirmpass = pswd;
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
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: "Confirm Password.",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpass1) {
                                  showpass1 = false;
                                } else {
                                  showpass1 = true;
                                }
                              });
                            },
                            icon: Icon(showpass1 == true
                                ? Icons.visibility_off
                                : Icons.visibility))),
                    obscuringCharacter: '*',
                    obscureText: showpass1,
                    validator: (cpass) {
                      if (cpass != confirmpass || cpass!.isEmpty) {
                        return "Password mismatch";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPageAs()));
                      }
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
