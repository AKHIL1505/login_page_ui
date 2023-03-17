import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginValidation(),
    theme: ThemeData(primarySwatch: Colors.grey),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginValidation extends StatefulWidget {
  @override
  State<LoginValidation> createState() => _LoginValidationState();
}

class _LoginValidationState extends State<LoginValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Form(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.black, width: 7),
                        right: BorderSide(color: Colors.black, width: 18),
                        top: BorderSide(color: Colors.grey, width: 20),
                        bottom: BorderSide(color: Colors.grey, width: 10))),
                child: Image.asset(
                  "assets/Icons/hacker.png",
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_pin),
                    label: const Text("Username",
                        style: TextStyle(color: Colors.grey, fontSize: 22)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    label: const Text(
                      "Password",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
            TextButton(
                onPressed: () {}, child: const Text("Create new Account !!")),
          ],
        ),
      )),
    );
  }
}
