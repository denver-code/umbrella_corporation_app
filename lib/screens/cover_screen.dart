import 'package:flutter/material.dart';
import 'package:umbrella_corporation_app/components/button.dart';
import 'package:umbrella_corporation_app/components/navbar.dart';
import 'package:umbrella_corporation_app/internal/hex_to_color.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/cover_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Navbar(context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              Text(
                "OUR\nBUSINESS\nIS LIFE\nITSELF",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 55,
                  color: HexColor.fromHex("#E6E6E6"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              BigButton(
                text: "EXPLORE COMPANY",
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
