import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Question.dart';
import 'package:lab10/screens/History/H_Home.dart';

class M_Medium extends StatefulWidget {
  const M_Medium({super.key});

  @override
  State<M_Medium> createState() => _M_MediumState();
}

class _M_MediumState extends State<M_Medium> {
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
          qus_text: "What is 350 multiplied by 30??",
          ima: AssetImage("images/imagForQues/12.png"),
          answer_1: "9500",
          answer_2: "10500",
          answer_3: "10600",
          answer_4: "5500"),
    );
  }
}
