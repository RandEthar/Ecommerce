

import 'package:ecommerce_app/views/widgets/home/widget/build_home_app_bar.dart';
import 'package:ecommerce_app/views/widgets/home/widget/home_screen_body.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
   static const String routename='home';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildHomeAppBar(),
    
      body:const SingleChildScrollView(child: const  HomeScreenBody()),
    
    );
  }
}


