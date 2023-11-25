import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/sky1.jpg'), fit: BoxFit.cover),
            ),
            child: Column(children: [
              SizedBox(
                height: h * 0.15,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("img/lion1.jpg"),
              )
            ]),
          ),
          // ignore: avoid_unnecessary_containers
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "a@a.com",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('img/signin.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
