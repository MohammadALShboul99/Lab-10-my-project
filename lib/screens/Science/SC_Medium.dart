import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SC_Medium extends StatefulWidget {
  const SC_Medium({super.key});

  @override
  State<SC_Medium> createState() => _SC_MediumState();
}

class _SC_MediumState extends State<SC_Medium> {
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
          qus_text: "Who is the discoverer of electricity?",
          ima: AssetImage("images/imagForQues/13.jpg"),
          answer_1: "Benjamin Franklin",
          answer_2: "Thomas Edison",
          answer_3: "Nikola Tesla",
          answer_4: "Albert Einstein"),
    );
  }
}
