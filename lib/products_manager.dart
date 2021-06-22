import 'package:flutter/material.dart';
import 'package:product_app/product_control.dart';
import 'package:product_app/products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct}) {
    print('[producrManager widget] Constructor');
  }

  @override
  _ProductManagerState createState() {
    print('[producrManager widget] CreateState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[producrManager sTATE widget] INITsTATE()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[producrManager sTATE widget] Build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: ProductControl(
            addProduct: _addProduct,
          ),
        ),
        Products(
          _products,
        ),
      ],
    );
  }
}
