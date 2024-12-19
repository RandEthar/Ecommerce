


import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/models/featured_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.item});
     final FeaturedItemModel item;
  @override
  Widget build(BuildContext context) {
    return 
   Column(children: [
   Image.asset(item.image,
   height: 56.h,width: 56.w,),
   verticalSpace(4),
   Text(item.title,
   style: AppStyles.montserrat12regular.copyWith(
    fontSize: 10.sp,color: Color(0xff21003D)
   ),)
    ],);
  }
}