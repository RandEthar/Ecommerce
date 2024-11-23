


import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.indexPage});
       final int  indexPage;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
       Text("${indexPage+1}",style: AppStyles.montserrat14SimeBold.copyWith(
        color: Colors.grey,fontSize: 18.sp
       ),),Text("/3",style: AppStyles.montserrat14SimeBold.copyWith(
        color: Colors.black,fontSize: 18.sp
       ),),Spacer(),
        Text("Skip",style: AppStyles.montserrat14SimeBold.copyWith(
        color: Colors.black,fontSize: 18.sp
       ),)

    ],);
  }
}
    