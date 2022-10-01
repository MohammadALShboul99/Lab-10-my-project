import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Cotainwidget.dart';
import 'package:lab10/Home.dart';
import 'package:lab10/screens/Sport/SP_Easy.dart';
import 'package:lab10/screens/Sport/SP_Hard.dart';
import 'package:lab10/screens/Sport/SP_Medium.dart';

class SP_Home extends StatefulWidget {
  const SP_Home({super.key});

  @override
  State<SP_Home> createState() => _SP_HomeState();
}

class _SP_HomeState extends State<SP_Home> {
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
                return Home();
              })));
            },
            icon: Icon(
              Ionicons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text(
              "Sport",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black),
            ),
            Container_In_Home_Supject(
              Height: 260,
              ime: AssetImage("images/2.jpg"),
            ),
            Text(
              "Choose Your Level: ",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 240,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                splashColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SP_Easy();
                  })));
                },
                child: Text("Easy"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 240,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                splashColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SP_Medium();
                  })));
                },
                child: Text("Medium"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // This Button for Hard way
            Container(
              width: 240,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                splashColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return SP_Hard();
                  })));
                },
                child: Text("Hard"),
              ),
            ),
            Divider(
              height: 30,
            ),
            MaterialButton(
              splashColor: Colors.black,
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                  return Home();
                })));
              },
              child: Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
