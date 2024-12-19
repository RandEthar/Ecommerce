




import 'package:ecommerce_app/views/welcome/widget/welcome_screen_body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const routeName = "welcome_Screen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: WelcomeScreenBody(),


    );
  }
}

