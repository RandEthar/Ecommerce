
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/shared_pref.dart';
import 'package:ecommerce_app/core/widget/custom_dots_indecatur.dart';
import 'package:ecommerce_app/views/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotisIndecitor extends StatelessWidget {
  const DotisIndecitor(
      {super.key, required this.indexPage, required this.pageController});
  final int indexPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: indexPage != 0,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: TextButton(
              onPressed: () {
                if (indexPage > 0) {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                "Prev",
                style: AppStyles.montserrat14SimeBold.copyWith(fontSize: 18.sp),
              )),
        ),
        const Spacer(),
        Row(
          children: List.generate(3, (index) {
            return Padding(
              padding:  EdgeInsets.only(right: 9.w),
              child: CustomDotsIndecatur(isActive: index == indexPage),
            );
          }),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              if (indexPage < 2) {
                pageController.nextPage(
                  duration:const  Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }else{
                SharedPref.setbool(isUserOpenedApp, true);
               Navigator.pushReplacementNamed(context, SigninScreen.routeName);
              }
            },
            child: Text(
              indexPage != 2 ? "Next" : "Get Started",
              style: AppStyles.montserrat14SimeBold
                  .copyWith(fontSize: 18.sp, color: AppColors.primary),
            )),
      ],
    );
  }
}

