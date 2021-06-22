import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products) {
    print('[product Widget] Constructor');
  }
  @override
  Widget build(BuildContext context) {
    print('[product Widget] Build()');
    return Column(
      children: products
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
    );
  }
}
