import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/state/shoe_state.dart';
import 'package:provider/provider.dart';

class CircleColors extends StatelessWidget {
  const CircleColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
              child: RoundedColor(
                  color: Color(0xffcddb3d),
                  index: 4,
                  image: 'assets/images/green.png'),
              left: 60),
          Positioned(
              child: RoundedColor(
                  color: Color(0xfffab600),
                  index: 3,
                  image: 'assets/images/yellow.png'),
              left: 40),
          Positioned(
              child: RoundedColor(
                  color: Color(0xff3fa2f6),
                  index: 2,
                  image: 'assets/images/blue.png'),
              left: 20),
          RoundedColor(
              color: Color(0xff3f5861),
              index: 1,
              image: 'assets/images/black.png')
        ],
      ),
    );
  }
}

class RoundedColor extends StatelessWidget {
  final Color color;
  final int index;
  final String image;
  const RoundedColor({Key key, this.color, this.index, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: (this.index * 50)),
      child: GestureDetector(
        onTap: () {
          final shoeState = Provider.of<ShoeState>(context, listen: false);
          shoeState.shoeImage = this.image;
        },
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
