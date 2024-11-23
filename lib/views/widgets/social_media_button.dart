

  
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
   const SocialMediaButton({super.key, required this.svg, required this.onPressed});
   final String svg;
     final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return   Container(
                height: 54.h,width: 54.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffF83758)
                  ),
                  color: const Color(0xffFCF3F6),
                  shape:BoxShape.circle
                ),
                child: Center(
                  child: SvgPicture.asset(svg,
                               width: 24.w,height: 24.h,
                                ),
                ),
              );
  }
}