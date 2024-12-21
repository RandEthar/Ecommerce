


import 'package:ecommerce_app/views/widgets/Wishlist/widgets/count_down_timer.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
        child: CountdownTimer(
          duration: Duration(hours: 22, minutes: 55, seconds: 20),
        ),
      ),
    );
  }
}