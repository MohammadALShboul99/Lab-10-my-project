import 'package:flutter/material.dart';

class Container_widget extends StatelessWidget {
  Container_widget(
      {required this.Width,
      required this.Height,
      required this.ime,
      required this.OnTaping});
  double? Width;
  double? Height;
  AssetImage ime;
  Function() OnTaping;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTaping,
      child: Container(
        width: Width,
        height: Height,
        decoration: BoxDecoration(image: DecorationImage(image: ime)),
      ),
    );
  }
}

//
class Container_In_Home_Supject extends StatelessWidget {
  Container_In_Home_Supject({required this.Height, required this.ime});

  double? Height;
  AssetImage ime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Height,
      decoration: BoxDecoration(image: DecorationImage(image: ime)),
    );
  }
}
