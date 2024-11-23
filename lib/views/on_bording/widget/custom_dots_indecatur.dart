



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotsIndecatur extends StatelessWidget {
  const CustomDotsIndecatur({super.key, required this.isActive});
    final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isActive?40.w:10.w,height: isActive?8.h:10.h,
      decoration:  BoxDecoration(
          color: isActive? Colors.black: Colors.grey,
           borderRadius:const  BorderRadius.all(Radius.circular(100))
      ),



    );
  }
}