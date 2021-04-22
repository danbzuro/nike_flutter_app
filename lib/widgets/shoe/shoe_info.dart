import 'package:flutter/material.dart';

class ShoeInfo extends StatelessWidget {
  final String title;
  final String description;
  const ShoeInfo({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            this.description,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
