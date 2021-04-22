import 'package:flutter/material.dart';

class ShoeInfo extends StatelessWidget {
  const ShoeInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nie air Max 720',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Sint ea non laborum do ut labore adipisicing aute commodo dolore. Elit laborum nostrud magna exercitation aute incididunt laborum do nostrud. Sint cupidatat magna sunt enim consequat ex ullamco irure esse. Aliqua aliquip est deserunt occaecat enim nulla cillum nulla nisi quis in',
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
