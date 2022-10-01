import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SC_Easy extends StatefulWidget {
  const SC_Easy({super.key});

  @override
  State<SC_Easy> createState() => _SC_EasyState();
}

class _SC_EasyState extends State<SC_Easy> {
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
          qus_text: "Who is the discoverer of gravity ?",
          ima: AssetImage("images/imagForQues/11.jpg"),
          answer_1: "Albert Einstein",
          answer_2: "Sir Isaac Newton",
          answer_3: "Nikola Tesla",
          answer_4: "Benjamin Franklin"),
    );
  }
}
