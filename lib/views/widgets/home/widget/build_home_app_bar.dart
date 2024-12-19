
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

 AppBar buildHomeAppBar() {
    return AppBar(
      title: Row(
       //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SvgPicture.asset("assets/svgs/menuo.svg",height: 32.h,width: 32.w,),
        const Spacer(),
         Row(children: [
          Image.asset("assets/images/stylist_home.png",width: 38.78.w,height: 31.03.h,),
          SizedBox(width: 9.w,),
          Text("Stylish",style: AppStyles.Libre_Caslon_Text18Bold,)
        
         ],),const Spacer(),
         Image.asset("assets/images/women_home_page.png",height: 40.h,width: 40.w,)


    ],),);
  }