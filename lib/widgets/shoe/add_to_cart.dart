import 'package:flutter/material.dart';
import 'package:nike_store/widgets/shared/base_button.dart';

class AddToCart extends StatelessWidget {
  final String price;
  const AddToCart({
    Key key,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99), color: Color(0xffe3dede)),
      margin: EdgeInsets.only(bottom: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                this.price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            BaseButton(text: 'Add to cart'),
          ],
        ),
      ),
    );
  }
}
