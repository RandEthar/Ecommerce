import 'dart:ui';

import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/views/widgets/Shop/logic/cubit/shop_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerItemSize extends StatelessWidget {
  const ContainerItemSize({
    super.key,
    required this.title,
    required this.isSelected,
  });
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: Container(
            height: 32.h,
            width: 50.w,
            decoration: ShapeDecoration(
                color: isSelected ? const Color(0xffFA7189) : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    side:
                        const BorderSide(color: Color(0xffFA7189), width: 2))),
            child: Center(
                child: Text(
              title,
              style: AppStyles.montserrat14SimeBold.copyWith(
                  color: isSelected ? Colors.white : const Color(0xffFA7189),
                  height: 1.14.h),
            )),
          ),
        );
      },
    );
  }
}
