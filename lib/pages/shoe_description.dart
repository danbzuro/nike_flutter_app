import 'package:flutter/material.dart';
import 'package:nike_store/widgets/shared/base_button.dart';
import 'package:nike_store/widgets/shoe/shoe_info.dart';
import 'package:nike_store/widgets/shoe/shoe_widget.dart';
import 'package:nike_store/widgets/shoeDescription/button_actions.dart';
import 'package:nike_store/widgets/shoeDescription/buy_now.dart';
import 'package:nike_store/widgets/shoeDescription/circle_colors.dart';

class ShoeDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(children: [
              Hero(
                tag: 'shoeWidget',
                child: ShoeWidget(),
              ),
              SafeArea(
                child: Positioned(
                  child: FloatingActionButton(
                    onPressed: () => {
                      Navigator.pop(context),
                    },
                    child: Icon(Icons.chevron_left, size: 40),
                    elevation: 0,
                    highlightElevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              )
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
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
                      ),
                      SizedBox(height: 90),
                      ButtonActions()
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
