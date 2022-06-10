import 'package:flutter/material.dart';
import 'package:umbrella_corporation_app/components/umbrella_logo.dart';

// ignore: non_constant_identifier_names
Widget Navbar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 9,
    decoration: const BoxDecoration(
        color: Colors.black,
        border: Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 0.5,
          ),
        )),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 22,
        ),
        Row(children: [
          const SizedBox(
            width: 16,
          ),
          UmbrellaLogo(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.6,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushNamed(context, "/quickMenu");
            },
            child: Image(
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / 10,
              image: const AssetImage("assets/images/menu_icon.png"),
            ),
          ),
        ])
      ],
    ),
  );
}
