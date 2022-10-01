import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab10/Component/Cotainwidget.dart';
import 'package:lab10/Home.dart';
import 'package:lab10/screens/Math/M_Easy.dart';
import 'package:lab10/screens/Math/M_Hard.dart';
import 'package:lab10/screens/Math/M_Medium.dart';

class M_Home extends StatefulWidget {
  const M_Home({super.key});

  @override
  State<M_Home> createState() => _M_HomeState();
}

class _M_HomeState extends State<M_Home> {
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
              "Mathmatics",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black),
            ),
            // This widget Function for The picture
            Container_In_Home_Supject(
              Height: 260,
              ime: AssetImage("images/3.jpg"),
            ),
            Text(
              "Choose Your Level: ",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 40,
            ),
            // This Button for Easy Level
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
                    return M_Easy();
                  })));
                },
                child: Text("Easy"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // This Button for Medium Level
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
                    return M_Medium();
                  })));
                },
                child: Text("Medium"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // This Button for Hard Level
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
                    return M_Hard();
                  })));
                },
                child: Text("Hard"),
              ),
            ),
            Divider(
              height: 30,
            ),
            // This Button Back To Home
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
