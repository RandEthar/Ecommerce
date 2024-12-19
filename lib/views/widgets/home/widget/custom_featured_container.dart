


import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFeaturedContainer extends StatelessWidget {
  const CustomFeaturedContainer({
    super.key, required this.name, required this.path,
  });
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
    //  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
       height: 24.h,width: 61.w,
     decoration:BoxDecoration(
      color: Colors.white,
          boxShadow: [
            BoxShadow(
           color: Colors.grey.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius:4 ,
             
            )
          ],
            borderRadius: BorderRadius.circular(6.r)
     ) ,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text(name,style: AppStyles.montserrat12regular.copyWith(
        color: Colors.black
       ),),
       horizontalSpace(4),
                SvgPicture.asset(
                  height: 16.h,width: 16.w,
                 path)
     ],),
    
    );
  }
}