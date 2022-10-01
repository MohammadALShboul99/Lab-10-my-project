import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class M_Easy extends StatefulWidget {
  const M_Easy({super.key});

  @override
  State<M_Easy> createState() => _M_EasyState();
}

class _M_EasyState extends State<M_Easy> {
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
          qus_text: "What is the sum of 450 and 360?",
          ima: AssetImage("images/imagForQues/11.jpg"),
          answer_1: "610",
          answer_2: "810",
          answer_3: "910",
          answer_4: "710"),
    );
  }
}
