import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RoundedButton(icon: Icons.favorite),
        RoundedButton(icon: Icons.shopping_cart),
        RoundedButton(icon: Icons.wb_sunny_outlined),
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  final IconData icon;
  const RoundedButton({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Icon(this.icon),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 12,
                offset: Offset(0, 10))
          ]),
    );
  }
}
