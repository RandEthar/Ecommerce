import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/Shop/Screen/shop_screen.dart';
import 'package:ecommerce_app/views/widgets/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_app/views/widgets/home/widget/listview_item_clothes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListViewClothes extends StatefulWidget {
  const ListViewClothes({
    super.key,
  });

  @override
  State<ListViewClothes> createState() => _ListViewClothesState();
}

class _ListViewClothesState extends State<ListViewClothes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          BlocBuilder<HomeCubit, HomeState>(

            buildWhen: (previous, current) => 
            current is HomeDataLoading||  current is HomeDataFalier|| current is HomeDataSucces,
            builder: (context, state) {
              if (state is HomeDataLoading) {
                return Skeletonizer(
                  child: SizedBox(
                    height: 241.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listClothes.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: ListviewItemClothes(
                              itemClothes: listClothes.first,
                            ),
                          );
                        }),
                  ),
                );
              } else if (state is HomeDataFalier) {
                return Text(state.massage,
                    style: const TextStyle(color: AppColors.primary));
              } else if (state is HomeDataSucces) {
                var listproduct = state.products;
                return SizedBox(
                  height: 241.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listproduct.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShopScreen(
                                    productItem: listproduct[index],
                                  ),
                                ),
                              );
                            },
                            child: ListviewItemClothes(
                              itemClothes: listproduct[index],
                            ),
                          ),
                        );
                      }),
                );
              }
              return const Text("No data");
            },
          ),
          /* Positioned(
          left: 303,right:16 ,bottom: 101,
           child:Container(
  width: 40,
  height: 40,
  decoration: ShapeDecoration(
    gradient: RadialGradient(
      center: Alignment(0.24, 0.75), // تحديد مركز التدرج
      radius: 1, // تحديد نصف قطر التدرج
      colors: [
        Color(0xFFBBBBBB), // اللون الفاتح
        const Color.fromARGB(255, 138, 136, 136), // اللون الشفاف قليلاً (زيادة الشفافية)
      ],
    ),
    shape: CircleBorder(), // الشكل البيضاوي
  ),
)

         )*/
        ],
      ),
    );
  }
}
