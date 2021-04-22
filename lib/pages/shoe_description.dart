import 'package:flutter/material.dart';
import 'package:nike_store/widgets/shared/base_button.dart';
import 'package:nike_store/widgets/shoe/shoe_info.dart';
import 'package:nike_store/widgets/shoe/shoe_widget.dart';
import 'package:nike_store/widgets/shoeDescription/buy_now.dart';

class ShoeDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ShoeWidget(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ShoeInfo(
                        title: 'Nike Air Max 720',
                        description:
                            'The Nike Air Max 720 goes bigger than ever before with Nikes taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                      ),
                      SizedBox(height: 30),
                      BuyNow(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleColors(),
                          BaseButton(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleColors extends StatelessWidget {
  const CircleColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(child: RoundedColor(color: Color(0xffcddb3d)), left: 60),
          Positioned(child: RoundedColor(color: Color(0xfffab600)), left: 40),
          Positioned(child: RoundedColor(color: Color(0xff3fa2f6)), left: 20),
          RoundedColor(color: Color(0xff3f5861))
        ],
      ),
    );
  }
}

class RoundedColor extends StatelessWidget {
  final Color color;
  const RoundedColor({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle,
      ),
    );
  }
}
