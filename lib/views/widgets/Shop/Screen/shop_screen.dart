import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/Shop/logic/cubit/shop_cubit.dart';
import 'package:ecommerce_app/views/widgets/Shop/widgets/shop_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key, required this.productItem});
  static const String routeName = "ShopScreen";
  final ProductItemModel productItem;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
            child: ShopScreenBody(
          productItem: productItem,
        )),
      ),
    );
  }
}
