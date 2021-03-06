import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}){
              print('[Products Manager] Constructor');
  }
  @override
    State<StatefulWidget> createState() {

      print('[Products Manager] createState()');
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {

      print('[Products Manager] initState()');
      _products.add(widget.startingProduct);
      super.initState();
    }

    @override
      void didUpdateWidget(ProductManager oldWidget) {

              print('[Products Manager] didUpdateWidget()');
        super.didUpdateWidget(oldWidget);
      }

    void _addProduct(String product) {
                    setState(() {
                    _products.add(product);
                    });
                    print(_products);
    }



  @override
    Widget build(BuildContext context) {
      print('[Products Manager] build()');
      return Column(children: [ Container(
                margin: EdgeInsets.all(10.0),
                child: ProductControl(_addProduct),
              ),
              Products(_products)
              ]);
    }
}