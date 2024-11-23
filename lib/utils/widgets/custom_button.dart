


import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, this.onPressed,
  });
  final String title;
    final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 1000),
        foregroundColor: Colors.white,
        shadowColor: Colors.grey,
          minimumSize: Size(double.infinity, 55.h),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(4.r)),
          backgroundColor: AppColors.primary,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppStyles.montserrat14SimeBold
              .copyWith(color: Colors.white, fontSize: 20),
        ));
  }
}