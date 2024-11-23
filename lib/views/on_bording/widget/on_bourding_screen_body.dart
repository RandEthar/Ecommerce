import 'package:ecommerce_app/utils/app_images.dart';
import 'package:ecommerce_app/views/on_bording/widget/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBordingScreenBody extends StatelessWidget {
  const OnBordingScreenBody({super.key, required this.pageController});
   final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title: "Choose Products",
          description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
          image: Assets.imagesOnBoardingOne,
        ),
        PageViewItem(
          title: "Make Payment",
          description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
          image: Assets.imagesOnBoardingTwo,
        ),
         PageViewItem(
          title: "Get Your Order",
          description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
          image: Assets.imagesOnBourdingThree,
        ),
      ],
    );
  }
}
