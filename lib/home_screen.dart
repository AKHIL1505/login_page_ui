import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/Images/pexels-henry-&-co-1939485.jpg",
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Dark World",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Image.asset("assets/Icons/skull.png")
          ],
        ),
      ),
    );
  }
}
