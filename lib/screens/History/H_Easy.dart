import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

import '../../Home.dart';

class H_Easy extends StatefulWidget {
  const H_Easy({super.key});

  @override
  State<H_Easy> createState() => _H_EasyState();
}

class _H_EasyState extends State<H_Easy> {
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
          qus_text: "In what year did the Battle of Karama ?",
          ima: AssetImage("images/imagForQues/11.jpg"),
          answer_1: "1946",
          answer_2: "1968",
          answer_3: "1967",
          answer_4: "1973"),
    );
  }
}
