

import 'package:ecommerce_app/views/widgets/cart/widgets/listview_item_product.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const  String route='CartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListviewItemProduct(),
    );
  }
}