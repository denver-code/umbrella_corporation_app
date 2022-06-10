import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  const BigButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        side: const BorderSide(width: 1.0, color: Colors.white),
      ),
      child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(text,
              style: const TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
