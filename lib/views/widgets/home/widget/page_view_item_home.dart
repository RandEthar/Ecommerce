import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItemHome extends StatelessWidget {
  const PageViewItemHome(
      {super.key,
      required this.pathImage,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});
  final String pathImage;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 189.h,
            child: Image.asset(
              pathImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40.h,
          left: 30.w,
          child: Text(
            text1,
            style: AppStyles.montserrat36Bold
                .copyWith(fontSize: 20, color: Colors.white),
          ),
        ),
        Positioned(
          top: 70.h,
          left: 30.w,
          child: Text(
            text2,
            style: AppStyles.montserrat12regular.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          top: 90.h,
          left: 30.w,
          child: Text(
            text3,
            style: AppStyles.montserrat12regular.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
            top: 117.h,
            left: 30.w,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 32.h,
              width: 105.w,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Colors.white),
                      borderRadius: BorderRadius.circular(6))),
              child: Row(
                children: [
                  Text(
                    text4,
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
            ))
        // Now in (product)
      ],
    );
  }
}
