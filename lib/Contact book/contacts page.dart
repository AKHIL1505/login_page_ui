import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contacts(),
  ));
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = [
      "Allu Arjun",
      "Mammootty",
      "Mohanlal",
      "Prithviraj",
      "Tovino",
      "Vijay",
      "Surya",
      "Salim kumar"
    ];
    var image = [
      "assets/Icons/allu.jpg",
      "assets/Icons/mammootty.jpg",
      "assets/Icons/Mohanlal.jpeg",
      "assets/Icons/prithviraj.jpg",
      "assets/Icons/Tovino.jpg",
      "assets/Icons/vijay.jpg",
      "assets/Icons/surya.jpg",
      "assets/Icons/salim kumar.jpg"
    ];
    var msgIcon = [Icon(Icons.message)];
    var number = [
      "9895088750",
      "9********3",
      "9********3",
      "9********4",
      "9********4",
      "9********4",
      "9********4",
      "9********4"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "My Contacts",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/Icons/img.png"),
                  radius: 25),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(18)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ),
      ),
      body: ListView(
          children: List.generate(
        8,
        (index) => Card(color: Colors.blueGrey,
            child: ListTile(
                title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(number[index]),
                leading:
                    CircleAvatar(backgroundImage: AssetImage(image[index])),
                trailing: Icon(Icons.call))),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFFFFFF),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.add,color: Colors.black,),
        ),
      ),
    );
  }
}
