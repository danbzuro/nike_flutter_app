import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                this.title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
