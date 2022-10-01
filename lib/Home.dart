import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Cotainwidget.dart';
import 'package:lab10/screens/History/H_Home.dart';
import 'package:lab10/screens/Math/M_Home.dart';
import 'package:lab10/screens/Science/SC_Home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lab10/screens/Sport/SP_Home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        leading: Icon(
          Ionicons.person,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Stack(children: [
        SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40),
            children: [
              SizedBox(
                height: 20,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      speed: Duration(milliseconds: 100),
                      'Hey,What subject you want to improve today ? ',
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container_widget(
                Width: 100,
                Height: 100,
                ime: AssetImage("images/2.jpg"),
                OnTaping: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SP_Home();
                  })));
                },
              ),
              Center(child: Text("Sport")),
              SizedBox(
                height: 10,
              ),
              Container_widget(
                Width: 100,
                Height: 100,
                ime: AssetImage("images/3.jpg"),
                OnTaping: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return M_Home();
                  })));
                },
              ),
              Center(child: Text("Mathmatics")),
              SizedBox(
                height: 20,
              ),
              Container_widget(
                Width: 100,
                Height: 100,
                ime: AssetImage("images/4.png"),
                OnTaping: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return H_Home();
                  })));
                },
              ),
              Center(child: Text("History")),
              SizedBox(
                height: 20,
              ),
              Container_widget(
                Width: 100,
                Height: 100,
                ime: AssetImage("images/5.png"),
                OnTaping: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SC_Home();
                  })));
                },
              ),
              Center(child: Text("Science")),
            ],
          ),
        )
      ]),
    );
  }
}
