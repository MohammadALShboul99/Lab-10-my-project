import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SC_Hard extends StatefulWidget {
  const SC_Hard({super.key});

  @override
  State<SC_Hard> createState() => _SC_HardState();
}

class _SC_HardState extends State<SC_Hard> {
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
          qus_text: "What is the symbol for nitrogen in the periodic table?",
          ima: AssetImage("images/imagForQues/14.jpg"),
          answer_1: "Na",
          answer_2: "N",
          answer_3: "Nb",
          answer_4: "Nd"),
    );
  }
}
