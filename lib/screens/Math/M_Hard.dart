import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class M_Hard extends StatefulWidget {
  const M_Hard({super.key});

  @override
  State<M_Hard> createState() => _M_HardState();
}

class _M_HardState extends State<M_Hard> {
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
          qus_text: "Who invented mathematics?",
          ima: AssetImage("images/imagForQues/13.jpg"),
          answer_1: "Ibn battouta",
          answer_2: "Archimedes",
          answer_3: "Nikola Tesla",
          answer_4: "Ibn Sina"),
    );
  }
}
