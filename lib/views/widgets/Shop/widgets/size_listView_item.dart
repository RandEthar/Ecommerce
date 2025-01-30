import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/Shop/logic/cubit/shop_cubit.dart';
import 'package:ecommerce_app/views/widgets/Shop/widgets/container_item_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeListviewItem extends StatelessWidget {
  const SizeListviewItem({super.key, required this.productItem});
  final ProductItemModel productItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: SizeItem.values.length,
            itemBuilder: (context, index) {
              SizeItem size = SizeItem.values[index];
  
              return GestureDetector(
                onTap: () {
                  context.read<ShopCubit>().newSize = SizeItem.values[index];
                  context.read<ShopCubit>().updateSize(productItem);
                },
                child: BlocBuilder<ShopCubit,ShopState>(
                  builder: (context, state) {
                    print("size2=${size}");
                    SizeItem selectedSize = context.read<ShopCubit>().newSize;
                      print("selectedSize2=${selectedSize}");
                    return ContainerItemSize(
                      
                      isSelected: size == selectedSize,
                      title: SizeItem.values[index].toString().split('.').last,
                    );
                  },
                ),
              );
            }));
  }
}
