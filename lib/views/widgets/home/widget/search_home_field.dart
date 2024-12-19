import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchHomeField extends StatelessWidget {
  const SearchHomeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
        boxShadow: [
            BoxShadow(
           color: Colors.grey.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius:4 ,
             
            )
          ],),
      child: SizedBox(
        height: 40.h,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
             
                borderRadius: BorderRadius.all(
                  
                  Radius.circular(6.r))),
            enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(6.r))),
            focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(
                color: AppColors.primary
               ),
                borderRadius: BorderRadius.all(Radius.circular(6.r))),
            hintText: 'Search any Product..',
            hintStyle: AppStyles.montserrat12regular
                .copyWith(fontSize: 14, color: Color(0xffBBBBBB)),
            prefixIcon: SvgPicture.asset(
              "assets/svgs/serch_home_screen.svg",
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: SvgPicture.asset("assets/svgs/mucrofon.svg",
                fit: BoxFit.scaleDown),
          ),
        ),
      ),
    );
  }
}
