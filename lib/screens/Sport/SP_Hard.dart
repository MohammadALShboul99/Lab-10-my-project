import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SP_Hard extends StatefulWidget {
  const SP_Hard({super.key});

  @override
  State<SP_Hard> createState() => _SP_HardState();
}

class _SP_HardState extends State<SP_Hard> {
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
          qus_text:
              "How many times has Real Madrid won the Champions League? ?",
          ima: AssetImage("images/imagForQues/11.jpg"),
          answer_1: "10",
          answer_2: "14",
          answer_3: "16",
          answer_4: "11"),
    );
  }
}
