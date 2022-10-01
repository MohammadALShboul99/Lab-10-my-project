import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class H_Hard extends StatefulWidget {
  const H_Hard({super.key});

  @override
  State<H_Hard> createState() => _H_HardState();
}

class _H_HardState extends State<H_Hard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.menu,
                color: Colors.black,
              ))
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                return H_Home();
              })));
            },
            icon: Icon(
              Ionicons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Qus(
          qus_text: "In what year did the US launch a nuclear bomb in Japan? ",
          ima: AssetImage("images/imagForQues/12.png"),
          answer_1: "1940",
          answer_2: "1945",
          answer_3: "1943",
          answer_4: "1944"),
    );
  }
}
