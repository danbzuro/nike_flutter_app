import 'package:flutter/material.dart';
import 'package:nike_store/widgets/layout/header.dart';
import 'package:nike_store/widgets/shoe/add_to_cart.dart';
import 'package:nike_store/widgets/shoe/shoe_info.dart';
import 'package:nike_store/widgets/shoe/shoe_widget.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(title: 'For you'),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ShoeWidget(),
                  ShoeInfo(),
                  AddToCart(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
