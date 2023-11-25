import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "f.jpg", "t.png"];
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
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),*/

                SizedBox(
                  height: 05,
                ),
                Text(
                  "User Email",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 226, 226),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your Email",
                        prefixIcon: Icon(Icons.email,
                            color: Color.fromARGB(255, 234, 44, 44)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 244, 239, 239),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 244, 239, 239),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 226, 226),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your password ",
                        prefixIcon: Icon(Icons.password,
                            color: Color.fromARGB(255, 234, 44, 44)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 244, 239, 239),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 244, 239, 239),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "forget your password",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
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
                "Sign up",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          RichText(
              text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
            text: "Have an account",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          SizedBox(
            height: w * 0.1,
          ),
          RichText(
              text: TextSpan(
            text: " Sign up using one of the following method",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          )),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("img/" + images[index])),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
