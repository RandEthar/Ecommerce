


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:191.h ,width: 331.w,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(6.r)),
       color: Colors.black
      ),child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
          child: Image.asset("assets/images/women_printed.png",height: 130.h,width: 125.w,fit:BoxFit.cover ,))
      ],),
    );
  }
}