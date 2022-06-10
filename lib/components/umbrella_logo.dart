import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget UmbrellaLogo() {
  return Row(
    children: const [
      Image(
        image: AssetImage("assets/images/umbrella_logo.png"),
        width: 40,
      ),
      SizedBox(
        width: 6,
      ),
      Text(
        "UMBRELLA\nCORP",
        style: TextStyle(color: Colors.white, fontSize: 17),
      )
    ],
  );
}
