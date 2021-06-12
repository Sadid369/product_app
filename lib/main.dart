import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advance Food Tester');
                  });
                },
                child: Text('Add Product'),
              ),
            ),
            Column(
              children: _products
                  .map(
                    (e) => Card(
                      child: Column(
                        children: [
                          Image.asset('assets/food.jpg'),
                          Text(e),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
