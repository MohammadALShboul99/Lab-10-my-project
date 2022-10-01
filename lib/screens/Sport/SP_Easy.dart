import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class SP_Easy extends StatefulWidget {
  const SP_Easy({super.key});

  @override
  State<SP_Easy> createState() => _SP_EasyState();
}

class _SP_EasyState extends State<SP_Easy> {
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
          qus_text: "In which team does Moussa Al Taamari play?",
          ima: AssetImage("images/imagForQues/14.jpg"),
          answer_1: "Detroit Lions",
          answer_2: "Odd Heverly Lovin",
          answer_3: "Atlanta Falcons",
          answer_4: "Carolina Panthers"),
    );
  }
}
