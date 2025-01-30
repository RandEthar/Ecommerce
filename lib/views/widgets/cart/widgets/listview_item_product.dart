



import 'package:ecommerce_app/views/widgets/cart/widgets/item_product.dart';
import 'package:flutter/material.dart';

class ListviewItemProduct extends StatelessWidget {
  const ListviewItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 22,vertical: 14),
        child: ItemProduct(),
      );

    });
  }
}