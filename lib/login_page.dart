import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.grey),
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Web"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.black, Colors.black26, Colors.black12],
                focal: Alignment.topCenter)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Icons/hacker.png",
                height: 220,
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelStyle:
                          const TextStyle(fontSize: 18, color: Colors.black),
                      label: const Text("Username"),
                      hintText: "Username",
                      prefixIcon: const Icon(Icons.account_circle),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        labelStyle:
                            const TextStyle(fontSize: 18, color: Colors.black),
                        label: const Text("Password"),
                        hintText: "Password",
                        helperText: "Password must be less than 8.",
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: const Icon(
                          Icons.visibility_off,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Login")),
              ),
              TextButton(
                  onPressed: () {}, child: const Text("Forgot Password ?")),
              TextButton(
                  onPressed: () {}, child: const Text("Create new Account !!"))
            ],
          ),
        ),
      ),
    );
  }
}
