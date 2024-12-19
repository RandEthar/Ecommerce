import 'package:ecommerce_app/core/services/auth.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/shared_pref.dart';

import 'package:ecommerce_app/views/on_bording/on_bording_screen.dart';
import 'package:ecommerce_app/views/screens/signin_screen.dart';
import 'package:ecommerce_app/views/widgets/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> text1;
  late Animation<Offset> text2;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
        
    text1 = Tween<double>(begin: 0, end: 1)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
            
    text2 = Tween<Offset>(begin: const Offset(5, 0), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    
    _controller.forward();

 
    navigateToOnBoardingScreen();
  }

  Future<void> navigateToOnBoardingScreen() async{
    bool isOpendApp=SharedPref.getbool(isUserOpenedApp);
   bool isLoagedIn=await     AuthImpl().isCurrentUserLoagedIn();
    return Future.delayed(
      const Duration(seconds: 4),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, isOpendApp?
        (isLoagedIn?HomeScreen.routename: SigninScreen.routeName):OnBordingScreen.routeName);
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
          scale: text1,
            child: Image.asset("assets/images/splash_screen_one.png",width: 125.w,height: 100.h,)),
          SizedBox(
            height: 9.h,
          ),
          SlideTransition(
            position: text2,
            child: Text(
              "Stylish",
              style: AppStyles.libreCaslonText40Bold,
            ),
          ),
        ],
      ),
    );
  }
}
