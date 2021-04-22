import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
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
                '\$189.0',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () => {},
              child: Text('Add to cart'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffffd54f)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99)))),
            )
          ],
        ),
      ),
    );
  }
}
