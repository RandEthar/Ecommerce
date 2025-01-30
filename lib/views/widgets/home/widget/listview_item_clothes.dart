import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:ecommerce_app/core/utils/widgets/stars.dart';
import 'package:ecommerce_app/views/widgets/home/logic/cubit/home_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewItemClothes extends StatelessWidget {
  const ListviewItemClothes({super.key, required this.itemClothes});
  final ProductItemModel itemClothes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 241.h,
      width: 170.w,
      decoration: const ShapeDecoration(shape: RoundedRectangleBorder()),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.network(
              itemClothes.pathImage,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
              height: 124.h,
              width: 170.w,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemClothes.titel,
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black),
                ),
                verticalSpace(4),
                Text(
                  overflow: TextOverflow.ellipsis,
                  itemClothes.description,
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black, fontSize: 10),
                ),
                verticalSpace(4),
                Text(
                  "₹ ${(itemClothes.price - (itemClothes.price * (itemClothes.discount / 100))).toInt()}",
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black),
                ),
                verticalSpace(4),
                Row(
                  children: [
                    Text(
                      "₹ ${itemClothes.price}",
                      style: AppStyles.montserrat12medium.copyWith(
                        color: const Color(0xffBBBBBB),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xffBBBBBB),
                      ),
                    ),
                    horizontalSpace(4),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${itemClothes.discount}",
                            style: AppStyles.montserrat12medium
                                .copyWith(fontSize: 10, color: Colors.red),
                          ),
                          TextSpan(
                            text: "%Off",
                            style: AppStyles.montserrat12medium.copyWith(
                              fontSize: 10,
                              color: Colors.red,
                              height: 0.16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                horizontalSpace(4),
                Row(
                  children: [
                    const Stars(
                      size_star: 14,
                    ),
                    horizontalSpace(4),
                    Text(
                      "${itemClothes.rating}",
                      style: AppStyles.montserrat12medium.copyWith(
                        color: const Color(0xffBBBBBB),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xffBBBBBB),
                      ),
                    ),
                    const Spacer(),
                    BlocBuilder<HomeCubit, HomeState>(
                      buildWhen: (previous, current) => current is FavoriteChangedSuccsess,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8, right: 15),
                          child: SizedBox(
                            height: 12,
                            width: 12,
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<HomeCubit>()
                                    .toggleFavorite(itemClothes);
                              },
                              child: Icon(
                                context.read<HomeCubit>().isFav(itemClothes)?Icons.favorite:
                                Icons.favorite_border_outlined,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
