

import 'package:ecommerce_app/views/widgets/cart/cart_screen.dart';
import 'package:ecommerce_app/views/widgets/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarShopScreen extends StatelessWidget {
  const AppBarShopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
 Navigator.pop(context);


            },
            icon: SvgPicture.asset(
              "assets/svgs/Left_arrow.svg",
              height: 19.h,
              width: 9.w,
            )),
    const Spacer(),
        IconButton(
            onPressed: () {
                 Navigator.pushNamed(context,CartScreen.route);
            },
            icon: SvgPicture.asset(
              "assets/svgs/shopping.svg",
              height: 32.h,
              width: 32.w,
            ))
      ],
    );
  }
}