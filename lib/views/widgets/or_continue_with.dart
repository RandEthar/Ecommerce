


import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/font_weight_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ORContinueWth extends StatelessWidget {
  const ORContinueWth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "- OR Continue with -",
        style: AppStyles.poppins14regular.copyWith(fontSize: 12.sp,
        fontWeight: FontWieghtHelper.medium,  height: 0.h,),
      ),
    );
  }
}