import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}){
              print('[Products Manager] Constructor');
  }
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      print('[Products Manager] createState()');
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {
      // TODO: implement initState
      print('[Products Manager] initState()');
      _products.add(widget.startingProduct);
      super.initState();
    }

    @override
      void didUpdateWidget(ProductManager oldWidget) {
        // TODO: implement didUpdateWidget
              print('[Products Manager] didUpdateWidget()');
        super.didUpdateWidget(oldWidget);
      }



  @override
    Widget build(BuildContext context) {
      print('[Products Manager] build()');
      return Column(children: [ Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                    _products.add('Advanced Food Tester');
                    });
                    print(_products);
                  },
                  child: Text('Add Product'),
                ),
              ),
              Products(_products)
              ]);
    }
}