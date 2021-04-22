import 'package:flutter/material.dart';
import 'package:nike_store/pages/shoe.dart';
import 'package:nike_store/pages/shoe_description.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike app Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'shoe_description',
      routes: {
        'shoe': (_) => ShoePage(),
        'shoe_description': (_) => ShoeDescriptionPage(),
      },
    );
  }
}
