import 'package:ecommerce_app/views/screens/forget_password/widget/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen ({super.key});
   static const  String routeName='ForgetPassword';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: SafeArea(child: ForgetPasswordBody()),


    );
  }
}