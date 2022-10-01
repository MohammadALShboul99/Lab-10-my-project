import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class H_Medium extends StatefulWidget {
  const H_Medium({super.key});

  @override
  State<H_Medium> createState() => _H_MediumState();
}

class _H_MediumState extends State<H_Medium> {
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
          qus_text: "In what year Jordan become independent ?",
          ima: AssetImage("images/imagForQues/13.jpg"),
          answer_1: "1947",
          answer_2: "1946",
          answer_3: "1948",
          answer_4: "1953"),
    );
  }
}
