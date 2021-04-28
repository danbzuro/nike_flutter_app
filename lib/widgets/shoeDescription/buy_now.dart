import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/widgets/shared/base_button.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$180.7',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Bounce(
          delay: Duration(seconds: 1),
          from: 8,
          child: BaseButton(text: 'Buy now'),
        ),
      ],
    );
  }
}
