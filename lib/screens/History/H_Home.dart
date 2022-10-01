import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Cotainwidget.dart';
import 'package:lab10/Home.dart';
import 'package:lab10/screens/History/H_Easy.dart';
import 'package:lab10/screens/History/H_Hard.dart';
import 'package:lab10/screens/History/H_Medium.dart';

class H_Home extends StatefulWidget {
  const H_Home({super.key});

  @override
  State<H_Home> createState() => _H_HomeState();
}

class _H_HomeState extends State<H_Home> {
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
              "History",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black),
            ),
            Container_In_Home_Supject(
              Height: 260,
              ime: AssetImage("images/4.png"),
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
                    return H_Easy();
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
                    return H_Medium();
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
                    return H_Hard();
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
