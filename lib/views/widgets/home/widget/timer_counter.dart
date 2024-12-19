import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TimerCounter extends StatelessWidget {
  const TimerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        width: double.infinity,
        height: 60.h,
        decoration: ShapeDecoration(
            color: Color(0xff4392F9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r))),
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, top: 8.h, bottom: 8.h),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deal of the Day",
                    style: AppStyles.montserrat12medium
                        .copyWith(color: Colors.white, fontSize: 16.sp),
                  ),
                  verticalSpace(6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/timer.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      horizontalSpace(4),
                      Text(
                        "22h 55m 20s remaining",
                        style: AppStyles.montserrat12regular
                            .copyWith(color: Colors.white, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              ),
       const  Spacer(),
              TextButton(
                
                style: TextButton.styleFrom(
                    minimumSize: Size(89.w, 28.h),
                    side: BorderSide(color: Colors.white, width: 0.5.w),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r))),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "View all",
                      style: AppStyles.montserrat14SimeBold
                          .copyWith(fontSize: 12.sp, color: Colors.white),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/Vector (1).svg",
                      height: 12.h,
                      width: 12.w,
                    )
                  ],

                ),
              )
             , horizontalSpace(8)
            ],
          ),
        ),
      ),
    );
  }
}
