import 'package:ecommerce_app/views/on_bording/widget/custom_appbar.dart';
import 'package:ecommerce_app/views/on_bording/widget/dotis_Indecitor.dart';
import 'package:ecommerce_app/views/on_bording/widget/on_bourding_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});
  static const routeName = "OnBordingScreen";
  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
   
  }
   @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 17.w, right: 17.w, top: 17.h),
          child: Column(
            children: [
            CustomAppbar(indexPage:currentPage),
              Expanded(child: OnBordingScreenBody(pageController: _pageController,)),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: DotisIndecitor(indexPage:currentPage,  pageController:_pageController
),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
