import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:product_app/products.dart';
import 'package:product_app/products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
          brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager(
          startingProduct: 'Food Taster',
        ),
      ),
    );
  }
}
