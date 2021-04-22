import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String text;
  const BaseButton({Key key, this.text = 'Im a button'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Text(this.text),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xffffd54f)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)))),
    );
  }
}
