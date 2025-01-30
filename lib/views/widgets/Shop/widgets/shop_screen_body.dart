import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:ecommerce_app/core/utils/widgets/stars.dart';
import 'package:ecommerce_app/views/widgets/Shop/logic/cubit/shop_cubit.dart';
import 'package:ecommerce_app/views/widgets/Shop/widgets/app_bar_shop_screen.dart';
import 'package:ecommerce_app/views/widgets/Shop/widgets/container_add_to_car.dart';

import 'package:ecommerce_app/views/widgets/Shop/widgets/contener_shop_screen.dart';
import 'package:ecommerce_app/views/widgets/Shop/widgets/size_listView_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopScreenBody extends StatelessWidget {
  const ShopScreenBody({
    super.key,
    required this.productItem,
  });
  final ProductItemModel productItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarShopScreen(),
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 24.w),
              child: Image.network(
                productItem.pathImage,
                height: 213.h,
                width: 343.w,
              ),
            ),
            Row(
              children: [
                Text(
                  "Size: ",
                  style: AppStyles.montserrat14SimeBold
                      .copyWith(color: Colors.black),
                ),
                BlocBuilder<ShopCubit, ShopState>(
                  builder: (context, state) {
                    return Text(
                      productItem.size.toString().split('.').last,
                      style: AppStyles.montserrat14SimeBold
                          .copyWith(color: Colors.black),
                    );
                  },
                ),
              ],
            ),
            verticalSpace(12),
            SizeListviewItem(
              productItem: productItem,
            ),
            verticalSpace(16),
            Text(
              productItem.titel,
              style: AppStyles.montserrat14SimeBold
                  .copyWith(fontSize: 20.sp, color: Colors.black),
            ),
            verticalSpace(16),
            Text(
              "Vision Alta Men’s Shoes Size (All Colours)",
              style: AppStyles.montserrat12regular
                  .copyWith(fontSize: 14.sp, color: Colors.black),
            ),
            verticalSpace(8),
            Row(children: [
              const Stars(
                size_star: 18,
              ),
              horizontalSpace(8)
              // 56,890
              ,
              Text(
                "${productItem.rating}",
                style: AppStyles.montserrat12regular
                    .copyWith(fontSize: 14.sp, color: const Color(0xff828282)),
              ),
            ]),
            verticalSpace(8),
            Row(
              children: [
                Text(
                  "₹${productItem.price}",
                  style: AppStyles.montserrat12regular.copyWith(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: const Color(0xff808488),
                      color: const Color(0xff808488),
                      decorationThickness: 1,
                      height: 1.14,
                      fontSize: 14.sp),
                ),
                horizontalSpace(8),
                Text(
                  "₹${productItem.price - (productItem.price * (productItem.discount / 100))}",
                  style: AppStyles.montserrat12regular.copyWith(
                      color: Colors.black, height: 1.14, fontSize: 14.sp),
                ),
                horizontalSpace(8),
                Text(
                  "${productItem.discount}% Off",
                  style: AppStyles.montserrat14SimeBold.copyWith(
                      color: AppColors.primary, height: 1.14, fontSize: 14.sp),
                ),
              ],
            ),
            verticalSpace(8),
            Text(
              "Product Details",
              style: AppStyles.montserrat12medium
                  .copyWith(color: Colors.black, height: 1.14, fontSize: 16.sp),
            ),
            verticalSpace(8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: productItem.description,
                      style: AppStyles.montserrat12regular.copyWith(
                        color: Colors.black,
                        height: 1.33,
                      )),
                  TextSpan(
                      text: ' ...',
                      style: AppStyles.montserrat12regular
                          .copyWith(color: Colors.black)),
                  TextSpan(
                      text: 'More',
                      style: AppStyles.montserrat12regular.copyWith(
                        color: const Color(0xffFA7189),
                        height: 1.33,
                      )),
                ],
              ),
            ),
            verticalSpace(8),
            Row(
              children: [
                const ContenerShopScreen(
                  hight: 24,
                  width: 103,
                  title: "Nearest Store",
                  pathIcon: "assets/svgs/Nearest_Store.svg",
                ),
                horizontalSpace(8),
                const ContenerShopScreen(
                  hight: 24,
                  width: 49,
                  title: "VIP",
                  pathIcon: "assets/svgs/VIP.svg",
                ),
                horizontalSpace(8),
                const ContenerShopScreen(
                  hight: 24,
                  width: 102,
                  title: "Return policy",
                  pathIcon: "assets/svgs/Return_policy.svg",
                )
              ],
            ),
            verticalSpace(8),
            Row(
              children: [
                ContenerAddToCard(
                  listColor: [Color(0xFF3E92FF), Color(0xFF0B3689)],
                  pathIcon: "assets/svgs/go_to_cart.svg",
                  text: "Go to cart",
                ),
                horizontalSpace(13),
                ContenerAddToCard(
                  listColor: [Color(0xFF70F8A8), Color(0xFF31B669)],
                  pathIcon: "assets/svgs/Buy_Now.svg",
                  text: "Buy Now",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
