


import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicOffer extends StatelessWidget {
  const PublicOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
               alignment: Alignment.centerLeft,
      child: RichText(
         text: TextSpan(children: [
       TextSpan(
         text: "By clicking the",
         style: AppStyles.montserrat12regular,
             
       ),
       TextSpan(
           text: " Register ",
           style: AppStyles. montserrat12regular.copyWith(

               color: AppColors.primary,
          )),
       TextSpan(
        
           text: " button, you agree\n to the public offer",
          style: AppStyles.montserrat12regular,)
                  ])),
    );
  }
}