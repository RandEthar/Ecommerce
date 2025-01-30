

import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    super.key, required this.size_star,
  });
  final double size_star;

  @override
  Widget build(BuildContext context) {
    return Row(children:[Row(
      children: List.generate(4, (index) {
        return Icon(
            size:size_star, color: Color(0xffEDB310), Icons.star);
      }),
    ),
    Row(
      children: List.generate(1, (index) {
        return  Icon(
            size: size_star,
            color: Color(0xffBBBBBB),
            Icons.star_half);
      }),
    ),] ,);
  }
}