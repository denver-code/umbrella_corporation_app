import 'package:flutter/material.dart';
import 'package:umbrella_corporation_app/components/umbrella_logo.dart';
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
              Container(
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
                          print("OPEN MENU!");
                        },
                        child: Image(
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width / 10,
                          image:
                              const AssetImage("assets/images/menu_icon.png"),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
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
              OutlinedButton(
                onPressed: null,
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  side: const BorderSide(width: 1.0, color: Colors.white),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text("EXPLORE COMPANY",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
