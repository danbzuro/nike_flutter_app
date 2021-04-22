import 'package:flutter/material.dart';

class ShoeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        color: Color(0xffffd54f),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              'assets/images/yellow.png',
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
