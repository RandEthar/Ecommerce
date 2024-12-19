


import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/views/screens/forget_password/screens/forget_password_screen.dart';

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
            Navigator.pushNamed(context,ForgetPasswordScreen.routeName);
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