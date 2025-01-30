import 'package:ecommerce_app/views/widgets/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_app/views/widgets/home/widget/build_home_app_bar.dart';
import 'package:ecommerce_app/views/widgets/home/widget/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
     context.read<HomeCubit>().fetchHomeDate();
    context.read<HomeCubit>().fitchDataWhenOpenApp();
    // TODO: implement initState
  
    //uploadProduct();
  }

  /*void uploadProduct() {
    FirestoreService firestoreService = FirestoreService.instance;
    for (int i = 0; i < listClothes.length; i++) {
      firestoreService.setData(
          path: ApiEndpoints.products(listClothes[i].id),
          data: listClothes[i].toMap());
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: const SingleChildScrollView(child: const HomeScreenBody()),
    );
  }
}
