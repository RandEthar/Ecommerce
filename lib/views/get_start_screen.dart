import 'package:ecommerce_app/utils/app_colors.dart';

import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});
  static const routeName = "getstart_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/GetStartScreen.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 160.h,
            left: 36.w,
            right: 36.w,
            child: Text(
              "       You want \n Authentic, here \n        you go!",
              style: AppStyles.montserrat14SimeBold
                  .copyWith(fontSize: 34.sp, color: Colors.white),
            ),
          ),
          Positioned(bottom: 133.w,right: 0,left: 0 ,child: Align(
              alignment: Alignment.center,
            child: Text("Find it here, buy it now!",style:AppStyles.montserrat12medium.copyWith(
              fontSize: 14.sp,color: Colors.white
            ),))),
            Positioned(
              bottom: 34.h,left: 40,right: 40,
              child:Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: Size(double.infinity, 55.h),
                   shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r)
                   )


                  ),
                  
                  onPressed:(){}, child: Text("Get Started",
                  style: AppStyles.montserrat14SimeBold.copyWith(fontSize: 24,
                  color: Colors.white),) )))
        ],
      ),
    );
  }
}
