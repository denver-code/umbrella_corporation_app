import 'package:flutter/material.dart';
import 'package:umbrella_corporation_app/components/button.dart';

class QuickMenu extends StatelessWidget {
  const QuickMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/umbrella_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                const Text(
                  "MENU",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigButton(text: "COVER SCREEN", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "EXPLORE COMPANY", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "PROJECTS", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "EXPANSION", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "DASHBOARD", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "GAME SERIES", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "ACCESS GENERATOR", onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    BigButton(text: "CREDITS", onPressed: () {}),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
