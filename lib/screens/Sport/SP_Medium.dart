import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SP_Medium extends StatefulWidget {
  const SP_Medium({super.key});

  @override
  State<SP_Medium> createState() => _SP_MediumState();
}

class _SP_MediumState extends State<SP_Medium> {
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
              "In which European country is the Arsenal F.C team located ?",
          ima: AssetImage("images/imagForQues/13.jpg"),
          answer_1: "Spain",
          answer_2: "Britain",
          answer_3: "Italia",
          answer_4: "Germany"),
    );
  }
}
