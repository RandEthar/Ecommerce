


import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/views/widgets/home/widget/custom_featured_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllFeaturedRows extends StatelessWidget {
  const AllFeaturedRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
         Text("All Featured",style: AppStyles.montserrat14SimeBold.copyWith(
          fontSize: 18.sp,color: const Color(0xff000000)
         )),
        const Spacer(),
     const  CustomFeaturedContainer(name: "Sort",path:"assets/svgs/Sort.svg" ,),
         SizedBox(width:9.w,),
 const CustomFeaturedContainer(name:"Filter" ,path:"assets/svgs/filter.svg" ,),


    ],);

  }
}

