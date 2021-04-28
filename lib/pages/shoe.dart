import 'package:flutter/material.dart';
import 'package:nike_store/widgets/shared/layout/header.dart';
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
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Hero(
                      tag: 'shoeWidget',
                      child: ShoeWidget(hasSizes: true),
                    ),
                    ShoeInfo(
                      title: 'Nike Air Max 720',
                      description:
                          'The Nike Air Max 720 goes bigger than ever before with Nikes taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AddToCart(price: '\$189.7'),
          ),
        ],
      ),
    );
  }
}
