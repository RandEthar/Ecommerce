


import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/font_weight_helper.dart';


import 'package:flutter/material.dart';

class CreateAnAccount extends StatelessWidget {
  const CreateAnAccount({
    super.key, required this.title1, required this.title2,required this.onTap,
  });
 final String title1;
 final String title2;
 final Function() ?onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
         children: [
        Text(
          title1,
            style: AppStyles.poppins14regular),
            verticalSpace(5),
        InkWell(
          onTap: onTap,
          child: Text(
                title2,
            style: AppStyles.poppins14regular.copyWith(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: AppColors.primary,
                fontWeight: FontWieghtHelper.semiBold),
          ),
        )
      ]));
    
  }
}