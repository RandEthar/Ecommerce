


import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            
          },
          child: Text(
            "Forgot Password?",
            style: AppStyles.poppins14regular
                .copyWith(fontSize: 12.sp, color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}