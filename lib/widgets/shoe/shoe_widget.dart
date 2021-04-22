import 'package:flutter/material.dart';

class ShoeWidget extends StatelessWidget {
  final bool hasSizes;

  const ShoeWidget({Key key, this.hasSizes = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hasSizes ? null : 330,
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.only(top: hasSizes ? 0 : 40),
      decoration: BoxDecoration(
        color: Color(0xffffd54f),
        borderRadius: BorderRadius.circular(hasSizes ? 20 : 45),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              'assets/images/yellow.png',
              scale: 2,
            ),
            if (this.hasSizes == true) Sizes()
          ],
        ),
      ),
    );
  }
}

class Sizes extends StatelessWidget {
  const Sizes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Size(size: '7'),
          Size(size: '7.5'),
          Size(size: '8'),
          Size(size: '8.5'),
          Size(size: '9'),
          Size(size: '9.5'),
        ],
      ),
    );
  }
}

class Size extends StatelessWidget {
  final String size;
  const Size({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: this.size == '9' ? Color(0xffffa000) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            if (this.size == '9')
              BoxShadow(
                color: Color(0xffffa000),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
          ]),
      child: Center(
        child: Text(
          this.size,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: this.size == '9' ? Colors.white : Color(0xffffd54f)),
        ),
      ),
    );
  }
}
